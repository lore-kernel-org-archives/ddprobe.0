Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DFA1F0E25
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762567794; cv=none; b=OrGP1CqMYqxU1Qym66KiONYAtBpR2oHLt0WAMsv8pn+PjaqDAXonA+5tvRo7EWCQo0IR8uxlIXGNelo+w4Uhr3AYzXoX+po1lkh/+0UEqbd4lCbeWAr87dxoYCXF5R9znrIRpL8YKCWPV5jP4yGLacFm8ZP7PKJk0/VUAEGKClg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762567794; c=relaxed/simple;
	bh=y8NTu80r+R7iZYMukerD0+59VywkI1dsFs34qJUDXk4=;
	h=To:Subject:From:Message-Id:Date; b=ZL5RwPv3XL1OrTgNirZYcTbi01M6LCU1EjzgJ7EKAE6km+Ht7T3PiCPYCLEJtC54ITeO1FK6cZDM3vPqTfIi/GtNYS0CSYiiLdGDcpSOh83KEkOeg9F5IYVmm8JqoT/F/E0EKaIbQo+3rxQZT3cydDxtw8IfUYwnc2ugOU2itYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqBkv+VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqBkv+VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF9EC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762567793;
	bh=y8NTu80r+R7iZYMukerD0+59VywkI1dsFs34qJUDXk4=;
	h=To:Subject:From:Date:From;
	b=EqBkv+VSV85W7nDWJhd5aduZpCNo2el09lHSIGE4y7fKnkh19sBjtmuBXhnE/qxu7
	 Vztd7jSXb1fOcD/6rqPTw7hrHgYyJhMwbWkWHteQh/S6XDPKAWURgrALcTw4Hy9C4T
	 2YhT9O150sTyxdr7wh89Cs/JCbjD4K/3KJpopDCGCCwDF7bv3P7mAimgAJXIVhy10p
	 iPzdhXnRh2tW4tlvNjGnwvWtMt/sJOpTki36t6E6qJr1cdqUDu/CypH35IspGhBc8d
	 AIsGIvSJqSarTMubA63BipWG28sAbsiw3F/DDt83KYCK4Mk7fWY3pOEH+zjEhKC5hP
	 ERe6pSPvJNP0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90570CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256779358.15389.5974194671798359288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f510b1394c60940db3802107c16b44d62c93195e2719fcfbcf913c836c25ede
Date: Sat, 08 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762567793
