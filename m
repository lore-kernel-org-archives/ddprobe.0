Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2273D224D6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774167294; cv=none; b=HGdneedoSX0p1jHTJd0DsyfYjqudS2ew6HYcg0A4jyM3s0p9rr0HYRaTAfHyzAKNmpPyewf6oo8jWGlgkkndD9rtMmpGV0a/6wNIbT2o9GCWxO//vsquTUnTztk6vbaU/S0tDEOt0A9oR9NYfmBW38bvhwyiSLLEpxS/8j9QS5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774167294; c=relaxed/simple;
	bh=6TZcn//cnFU5XtnuRTuHXo98uoSU7ua4G1mAzzt2JFU=;
	h=To:Subject:From:Message-Id:Date; b=AATakuXbmqZLF3RKuVRqLP28JzaOY4DJBCGKMpBEz4YLq6pDhRtNsRol4Ol26tmpIV1BwCc/DHSOOuZtIfEm1wlJnYjrftvfMQQV5ycrWMBpiuOZcafpB3mrkZJgZoH6CKDH/8ueGOSXFIRDoZWCJVAPTkAUn2IH8fSTPD0iHYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3vPu4bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3vPu4bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F4C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774167293;
	bh=6TZcn//cnFU5XtnuRTuHXo98uoSU7ua4G1mAzzt2JFU=;
	h=To:Subject:From:Date:From;
	b=D3vPu4bNcAX/P5LbByqIOAOevZRNZmj+kTCOE3D8k8KQOKmucGusyhz3SXUYdIYlj
	 w5OhNRdpiqTU8eRy2I65meQuqtO9z9FB3+zhy//hNpI++rp4TOWKVKJPztvc4pOdGS
	 VwpCKxhohQkqch0zPioDh9zNK33V7sB6Q4I9EdB78FBt12/MrYr5PkDhln9oEgQcfD
	 Hrxoe/HHrYK83IXa7yTACF8PsFzvkP/wkuwl7dbCLy6PHIg2FiZTY1wnAL+U6SB4CR
	 ebXFDrf2vqKmRHG4SY3tAPoNcDJUZVwmadODmwvQ1U1SsCGpV6uRCuW24eSrhFplx0
	 oRKhGuDZ3Hcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7EFC72AE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416729357.29941.14118308818519130773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b32fedbce1618cb0fbf3cea386c382b94f98a9a1838c5bd7a2b27ecd1a3059
Date: Sun, 22 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774167293
