Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E825680
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746325794; cv=none; b=MSvQrUY0J1ypx993khkqS8vWJFTPWA7fF9TJiP+EqNY/LwZMOm6Cuqo9skFxweYd8fvFMkQvuLm0mHRtFs0wKhV8ELS5eA3b7BYNqj2gqplpV7HpEd6c/nfle5AM7gyAgQwN4otoMnpFVNoP+ML0hNMauIMvEFpSR86DJWAhdw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746325794; c=relaxed/simple;
	bh=P+hPXcEAkUc8W2ICZvWeS2N2qXLOKKcX9E+3Ibcl25Q=;
	h=To:Subject:From:Message-Id:Date; b=HZGR5lFmw2uuX5vAy8WHhqJbIMtzusCHJOg5uZSG/IFqMab/QPmYqyszN4inXW/rPvc7QbXDf/vQ/UwGJjWNFWFXy3BpVgyVWNNsRmYKpzBibM92DLcvefVffp7ML4hvCwMoM5jYRK+HQ61Jhs46U1L8B4I4OGq0OUwC5pfJgZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2A0X2Wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2A0X2Wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F032C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746325793;
	bh=P+hPXcEAkUc8W2ICZvWeS2N2qXLOKKcX9E+3Ibcl25Q=;
	h=To:Subject:From:Date:From;
	b=o2A0X2Wbj2kto7wuqtsG2acYnfTQJ8wefYbaVi18QESOIGH+9dpZmPTZ1UZm//9Gt
	 bfaRHacMBvQfE973eEuMq9YCALepVVtrq60+RUFn4cqzBpKnYpVTPZy/01b1mYQCSG
	 nqlVOWXCqu7kVOPJNwmPk39OBCf+IImAhga3a8rH6g1vdzZJU9Lt825wR7s4ILIlY0
	 KYxoQgY2UX5nbkR5e2nA7aou8xFryZbJk7vdetWd+May2TLq+MLPhvPC3AaY3Lu1t0
	 Nk58g72EYTJxev+hQLPjXBVQDsFVTJ6RMXL8kHjSJo9Cs95onZnh4/CfG/1xwqdkeo
	 AqzVUUNbfPu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F394C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632579358.7869.16594175643691007782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba7cd60aac4ae0ea51533573718e22c7bbf4cde70397862aed76ad3418b51af
Date: Sun, 04 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746325793
