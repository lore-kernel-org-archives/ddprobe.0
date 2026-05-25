Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B5F290DBB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779736354; cv=none; b=txrzW5b1OdDYBGIUCLU7vrDRvvWUAu7lAY/3mjcXFaoMn7qJFTJLAkx8CGoVitBkR5ecze+T857U1mtuQnp4g9CRbLcpyHAJUhwwkDhVzS1NBvdYmBSqMkIip05fMeEsUkVJ8MxYXwKxPZe8YuMKrVu7DK+UViA4FomcEsAiz4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779736354; c=relaxed/simple;
	bh=Y25hOraM21gjqStHwiweKNutjlBIXz5sKoyGInmcZ/E=;
	h=To:Subject:From:Message-Id:Date; b=K0f8jtRv//KMJulxTkOOTKCQ8xPt7fucwcKE1OWLk0vPTrHUZdRACYlOJ0k3IGLq6Aa4AJHtja8Tk0v/13Ly6ZZIPTBZr9BHJdbI6LFIoe2/sSE/l3oWDgexRHoFIDvV6H4pRG6CxsJyc8Mnc2XAH+Y8oRrcsfS9wnyXzmNdV7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mfd10B7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mfd10B7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B5AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779736353;
	bh=Y25hOraM21gjqStHwiweKNutjlBIXz5sKoyGInmcZ/E=;
	h=To:Subject:From:Date:From;
	b=Mfd10B7dZaqBkAi7Bui40l9V+YYTsPzQFWcRid4M5DATYzjll4LVVDzwTDpm5IIpg
	 JNozmgAt3QJXQAB+88TSTw0E8F8fvVdDMPmBj5cAbSpiJQTX/ZiEipmRCeG7aQJ9UU
	 Nd6IG+WK+eUH6p8V1qUBOOSeYJ0Bx9h7T2PH/HBLr7lSkH8qFg+FfDXjXLby7OEQBF
	 DAs0W3MEaCOMpIVUptUxQ2E3bQL6nbVX3OfWQz7JbxHgLidIDiz7KXQKLnI+iWfRbC
	 zHl4gkMnlUij32NdJcoFT6snR49u6QTACwhSpvlnccIN8QWdBTMfE/BkJWNMWE5v3L
	 EWZ66BLRa1BFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE097CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973635370.22564.421469913770860952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f1e76a413c71e5c594b19000af5e63831e3b5376c0b2445a657729c4e2b37d
Date: Mon, 25 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779736353
