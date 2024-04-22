Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50198152180
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 19:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713813023; cv=none; b=aKjCMJuQnuiezRC+lGJM5P1o1c0k1B7i/RdODB9wWEnneelRrIQmJAN+Abe6cQ0bAVBV4dMtQ55sK5JU1U3AZW0DjeZOL6ZnwwEJalA4SJsVGOdiqYjCYhKuH3lQZF5AKqebeZYYgfDYHw71Uz5rbw2CnpRcXuvPWOs4Dx0TyHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713813023; c=relaxed/simple;
	bh=rJseoOEVYVsBOur5h0KiWvh0WumJPq4cIK5Qm/260ds=;
	h=To:Subject:From:Message-Id:Date; b=pwNwsSRInZTEi80VWY4m6/w8Xs5CeG9f3y0zCocx155OgSNkGQvdfutN9SRCqHsHSULtmTQBZ77F2oVCCq5b2ZSntih6M6yD7DQW84LkEQmgHGtaZz9nAQfL9bbqCRBv/seIPkUVwP+zM8VTY1NjItbDyK7sM4fCERxFKd0YvyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JK1yNBnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JK1yNBnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93A4C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 19:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713813022;
	bh=rJseoOEVYVsBOur5h0KiWvh0WumJPq4cIK5Qm/260ds=;
	h=To:Subject:From:Date:From;
	b=JK1yNBnun7GbG7VGtHU4vNbAs1t+EINT646EJo5r3RPmJbrjOIQe1TdME5OIU+9wh
	 ZqPCblnIAwqyn3DGZyyzK00LU367GkBAWrI3TUqtkYQIBRL3fIA2VuAMkNiqvOQSGc
	 iiANYdvJhpGhZAQcsFNN2uYfDdctcnZTALfYpilMpv5OzOKisfI6sdAy2rm2/7AUDK
	 PLEJAbmbaysX0U21+mwto0amCXMRylMYVCHqVbiwDtNXi7UIXnBez2/bfyVPPkwVs0
	 gLinRaZvGzao+wd2G4wW3lE4zysEn6s+Nz83GsqJN98Bz6hjAtcaVxWgdMeELBcPbV
	 mbMc4bcmsUPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C517EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 19:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171381302276.11262.17880899289378627165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dfed0440d3182a7558965078e7e342bccc7cd0ef4807bde06e6f0b35f2e728
Date: Mon, 22 Apr 2024 19:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713813022
