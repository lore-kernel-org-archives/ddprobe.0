Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108322E173D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769489634; cv=none; b=BK+s1C7SfTOodKj//UI4lUgjLS+GZxTVN3RG7n1fBxM0Woj4pUYkrZD409tquUp//S2x4NP+rNL46qoQtbwP7zM9NRPjwJN/MLod/k9q2vZ+115dihZbhVxRp/6XVBhEbP0bWs9Cnp22YHUegLSx2WQFK1x82+9xWS8beze1axQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769489634; c=relaxed/simple;
	bh=zxXRXIvvedwU/PpPOmzDMzFVG5Pj1g7slyEYJHyWAxI=;
	h=To:Subject:From:Message-Id:Date; b=RAlPIsMK11hwqP/RVOwhJTPcGDc8zpXnVmGDVBXryOzFbwINEk+JaolsBYNGo2wlHCGvNv6n9oIsdAifM4kx7eN8Hw7hbxSv3L/CmieuCtkhT1Gy4H4BqZ7IHUu1mX4qAj0K+rVdm+glGhJpRObU7Gb9H99rknA03i7FsaW34R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBfS+IYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBfS+IYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3022C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769489633;
	bh=zxXRXIvvedwU/PpPOmzDMzFVG5Pj1g7slyEYJHyWAxI=;
	h=To:Subject:From:Date:From;
	b=IBfS+IYOFAtCidBSyHehODrCJkh7LcQ69UdzPkDpfwYvNaRVxANUfq8u4ODQJtDE6
	 HVdKsWZCG68HzoPsOEgmdAox0cL1WlYi9K9nD3/jtZ584O73IvQuh1imgH/jT4XvBB
	 b7AzcS5RGYZLThKCO4O43tF1tVGzeRappItUmuPcwzJ3kZXj1e085VnqCC283jGYdZ
	 JK9I8bX2lHms6Jzn//e1MHmdNBMNgXsn+qZnCiCFfR6OIRMr3BZRHr8O26fUWjAQi9
	 ioBBC0XAK4bf8XFMroXn9aOE19Uke+6FucJwcGUxsYZlH23MontCRNuGbOVGsHVvoq
	 +9hBJEeBafh+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A4D2592C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948963358.24118.644994992288250900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15be19835185ed88cbe9878acc21c9508251a7ae5dd72eca38366eebcff96e90
Date: Tue, 27 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769489633
