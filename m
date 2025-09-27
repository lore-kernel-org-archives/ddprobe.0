Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2345F1AC88A
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758980394; cv=none; b=Iz9HL6Ap5p9P6mi86Zl9Oj2JX4L4WhqFSa2X8NR+3xjnx3k9bJ1fG8UMy4wFbCi004yTujcFVZoPZtpB6zrXJT67xoWL/3QzzlwZxSto6G20lJRxFenfpERqZDDvVyMNJj+EpkOsdxEfVlqqFEbuJNzqoxhiVq3u+LCi8oxTULU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758980394; c=relaxed/simple;
	bh=Qx0uqTJC46RRRAjcqvOKPxeAg9LCSNJOp2fHTLTXYyY=;
	h=To:Subject:From:Message-Id:Date; b=tTIyQJgOMbVoJ5Jzwf7laJPEUaMY4WDV1KgmXCBr2l8KJsTGr9k8Ihf+xYmwGfe1MEhuOTsPG4qcEEcgBHwr1lZHL+RF5e21nf/Yc3xfK7wamkUAx8LEROYd8z6GeERN6cdmPiGPbuqhTDdF/70RUG28TUM07Boxgh/m54P+yFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxz31ciq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxz31ciq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9595C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758980393;
	bh=Qx0uqTJC46RRRAjcqvOKPxeAg9LCSNJOp2fHTLTXYyY=;
	h=To:Subject:From:Date:From;
	b=oxz31ciqMQGwoJolcODqcJ1VuSHUX4JU1GfNGYeTOjlJ4BVJxYkueYXDUcuD68gIu
	 wNjmX8X0Xd/zQD6qS+8zG5B2yphnvqp3DRVg4PtW8K50Xz1hF5fB3DKozHjgFT23p3
	 B5Dh93wN1yDRSoCQvFarGlJ4l3puJxkpgYo99veLDr8xuTTLv2LPdzwf71hJ8YPXSr
	 VHFgR6I+dnRbHpPZGi4LTNd0ow23jt1F0PLfvPM082zWEnE+V4lb7GM9mV/oz2xplo
	 sWxiJobVT5o/wckdhbFbNlXYWGaUzcVwjKC8ufOaozIDNrB4wXSXLuvEe7wZzEMaW8
	 7farFrsI0LsgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9374ECAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898039358.20528.701404804605902644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cc097cd7eb9e3248d4a231b5049dec40148466388d49798182d337a1bcd1f2
Date: Sat, 27 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758980393
