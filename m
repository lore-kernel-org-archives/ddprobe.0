Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34918D299
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744334394; cv=none; b=n1FD4TnFX6E7ZeW/XUATzsxdDPDxr8OJteO7gFFXbwmwX0cM3G7CEyR5jVpSvNTH7x3XXVgiAbdgsItJ4PnYPycqBQ71tDOPZsSxLvcxA8JiI/9H7DLsO2nF3IpVA5nsHCIKfObR/IYTqHj/NsQhNFQWL6Je94GcfJRPjcfZupo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744334394; c=relaxed/simple;
	bh=hXBmhJzOStfNMYuK4bFFErNup7w74oySQ6eDpKfu4Uo=;
	h=To:Subject:From:Message-Id:Date; b=I2JOIDvBAuOLy8iSTvMvNsswyDTjqlQil9NVx8kB+Ch/H3yAZmV4JAeCJZQvix//i/LqO+WIscWmNxC1PnI4f6Ve+Cp4occ/Cp4/MywA5fid8ZP8BPahPRXk89GM/t1Hv5Qi4ApxDzr1XMMft/RLbMINv2/K2QR8JJNZc8G0XmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2jUDL2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2jUDL2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9D7C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744334393;
	bh=hXBmhJzOStfNMYuK4bFFErNup7w74oySQ6eDpKfu4Uo=;
	h=To:Subject:From:Date:From;
	b=V2jUDL2i/kcjCuupv4OUiA8foql6+4DqDemQDNjtRozU+G5HJZGYmOnYT2eceUWL+
	 F9WA19/uRUUu2X1W3Evk4UPf+Hv8Smn7z7HU4AGZzaZhuoRFI93WuwPLhO3RUYYvnZ
	 DtrOLxrRFCmvUErtbd1s6jGm2HUVHicWTrLCTQ0BoTnwXodLW4oXFo3o299iF6mEmh
	 gBLqj+NtJfZhswuK0rR3tDCGtSjKlo0DrSpPCa0tMBS01Q63eIxmew8mSlnGmfa+SC
	 SU5kdmYLwP8EcdRE6dzdh2OBmfs+2dBBZBImO2AV6uYDXo+ZupEbMF7jrMvjxrmDhp
	 2pzYdleYzCSIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAFC3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433439358.24687.17325923664947815836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517f4e92cf129367eb59859e5c19ba8621c4bc2f5b5e78e420a5d3529dc779ec
Date: Fri, 11 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744334393
