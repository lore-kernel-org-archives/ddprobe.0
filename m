Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED8A1514E2
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723282553; cv=none; b=tqLN/20yCrJuiXik1NZQOvQ9QV9cfGiZdcKJBBrxBH8EKzprOFj/ukf8P25aVY+hsWfSQ8IZBmv0YdqF/NgkbCHDS7Mi7MYLLgzFJ0fbOUhOMS50tyk1udh+jzR6BbunpkHC/0eX/poBdViuPk+wjvBNXub005aaZeCGK7iHTEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723282553; c=relaxed/simple;
	bh=jOF86bRhSl9b7ELw1TGJgigxP+sgT+yScVQz3AW5Pck=;
	h=To:Subject:From:Message-Id:Date; b=cNrCChl9UbJiGmYVn4p8leuu1xhbAVCZOei4pGXS4QiakSmxxpCYaJ6bi0slr+RFNr31CpPhFBUE/W2OYkw2aKFzR6QxOcVLySMSqNwiylkRjPs7R9gYvLd+fwOhkOhvrovNdG/+hR5eBsh72HnvYsfRRnxfax/1knkT3amvAss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGDwaYwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGDwaYwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A794BC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723282553;
	bh=jOF86bRhSl9b7ELw1TGJgigxP+sgT+yScVQz3AW5Pck=;
	h=To:Subject:From:Date:From;
	b=GGDwaYwXZ/UEyjAqHJFeuaMSMDrCjxi481Jz9zrKEH7dnO/uGML1oHc0r406Qps0e
	 fqFPUq5UqJAB7g82t5TBWyb0Q6Yo3SC+GIV3QytltdjO5vg9pU+o0GWJK5pCCmBHJa
	 vXSBBfUsjVCxxX4EfSSnr5XRW9wJ6fe22leJmTnDu6zkY487DM7oh8y8Jb4gAYEEEm
	 UY1E5Fz/L64Vfgoz/xPx6BSdofuT/FYoZZ4g40CY3v1AgCw75igB44n6nkqU0BoMcl
	 6E2U/sAmZoptrRQLca3zERqy/n4r30SsQb1IVRgr+HAt8Wx7bksbZL2/PXntQoTt3o
	 Bz7wZ1ryAn5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96399C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328255359.5497.10866479269998979559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924fdc853f495e33d089353b77bcbec31ae0eac048dc976785afac56487d2bcb
Date: Sat, 10 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723282553
