Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0C3328B77
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772651694; cv=none; b=paPxtJnlWqZbVO7BeX/QQGlkenTtP2OhKQDAKd0Uswv3Lz6iZRrMKcm4UFh0WdReMMh3Tzp/vELAjkaADQxReDtu+eMOtXJVRTpdzrHPbQ9D0zmi2qyiYSFuuckTmis5Xh5xBTyrhUUd4bbdGCAzi7/x0zQ9eY0UBqmOoukZ7JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772651694; c=relaxed/simple;
	bh=INxvQP8nKnKEJu6FJlW+GjuMAyAXnNMEmTazF3/vYzw=;
	h=To:Subject:From:Message-Id:Date; b=tRfk8/3YjRtMttVA1z+zPWdBivz42TMnIOR9pDa+iImGPsXQNxP4XBPL0HUbCdAkilldhZ+pjobwLJ7HxrBn0JL7fER9mjoun295SdCw+CcGOUaecaiWdSYI1Bi47yMrYzVx4l/C+abZj3FMugcpQ94XVhqBLn+nqegVPno7q2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooKJKODR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooKJKODR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F00DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772651693;
	bh=INxvQP8nKnKEJu6FJlW+GjuMAyAXnNMEmTazF3/vYzw=;
	h=To:Subject:From:Date:From;
	b=ooKJKODR6NenSvNH1VgD9WunCwZ+RM04D2/jFgPlzxGuWSDK+zN4j7ciH6gXobQPv
	 uFey7KrQflNjDmV60M2iqsqjE+LUoeeAwzhEQ61+f/y4YoR2dEj2qgxp2dBgOPwcu7
	 F5Y8N8+SxXoB+OeG8fckCTiFE9QwXDm3U38yCbkwNZ58IA0AxDaSDnuYH0nhUVxYRx
	 gntPFt2MFpMktxhCmUG3QX3eK6YAFqspJpU9l6vzJI6+skawaUsoz8d1N/9yIQkj5+
	 gbbiRhGYdwezWtX/rg6YH0mVMIeA48Ob1dHeUTo79cGZNRtF/M8E+Eu7uMfcqz+iAo
	 VAeZcWi0721VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94603EFCE3C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265169359.10368.16377800753391411910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8464ef1be6cc4dd557c7d2188cae11091dc976e54a29f48eb37c89acce4fed4f
Date: Wed, 04 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772651693
