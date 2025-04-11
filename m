Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C351C3BEB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744379394; cv=none; b=F5xdzrd8ZTU3e1p5y2vwbPWbytCjrAHARBX/RiOKJBjCjvIZPArD58rNU/mhcd8ivUaLV1akuFC/VvblSzNG9ThOVMMDsuQ02+qAcoX+78ipKVFrIjoO8/TKJ2MyMWNLWZJ+hG6+5Ddr3c0E0gthFM9bWdYxv5tafr9DkUeMskc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744379394; c=relaxed/simple;
	bh=U1FJffrpv7cM4G/RbDkJH+ulaOs56VFvUE2gK0sMtiU=;
	h=To:Subject:From:Message-Id:Date; b=ZzX+XvAeHM5coa34bxkb8Ge1Fjp5d9hyhqOU6293PSaXOA+ORBqxp1ZqJn17QWdFGzAWWQu2rb9kfH+1oB7x/ToXC6J1x+D4V0c4HDWnsm8bCVK+lD8HX7SQAQCgmdb9mFHiTyrbN+mKIMu79KdzgEagtUD3PvAN0F3HiDg1RDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVVSMaa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVVSMaa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744379393;
	bh=U1FJffrpv7cM4G/RbDkJH+ulaOs56VFvUE2gK0sMtiU=;
	h=To:Subject:From:Date:From;
	b=UVVSMaa8ITQ0iWXNnlGBNCHEHVtFNNOrlOMm31v2rEjcXWglm+nxeix/c4fARuJQ0
	 qxx6kCly2z8B/Zf73IXhyI6YP2qHuNUvArrS2I1n7NOkRbsi23DZBe+X4hURYLIwru
	 wGqNz9hvNMkbHIT1Yt+OFYVS2xISw2Q9UDJMCFjLRbLp56ZvstlcnwSXo3MnzL4DAD
	 LiSBFJfJkcOF6VVWVA0A9xsOsr5bKOyN6+x4vIf1WyP8VpIS1FHjE3MOeRzuMUGomg
	 XjxC7FqFeDnPhyyRWW8jQJzxDCLGFDssnjDJTIkSje3+qIB2FyXCFA59bBuvSgNkge
	 9XRCbKMdpjCLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AFBC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437939359.27666.9276803329013663977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78ef6ddc4922394038a0c9e15840c587b56ed463ee975f3a4cb025b897af044
Date: Fri, 11 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744379393
