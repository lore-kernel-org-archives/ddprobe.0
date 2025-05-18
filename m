Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B401D88A4
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747610994; cv=none; b=Dsi0e+MPX1GAntVNFbPXzafWNA7vjNVvS4/dNMn1CF86e/1w9iMa4wRPTaWuNvxRjr4zySUAQN6Pa+5Qfdpw72V4pZux62e4mhqCRNmhkd1KOg2KvBzFfPcY6DkJsQeSLrUyiQ4n97DpAnyz3FoFNbTiFCpHuVcrHeCeGWwwYEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747610994; c=relaxed/simple;
	bh=WPHfTxoEMbDJFSqpI/f3mFViDgQ/JMWgGWac3+TPTWY=;
	h=To:Subject:From:Message-Id:Date; b=tv8fX8PgMPK1Pn2cHBiZC+vGN8HZ6I747AvJPhgEIMyYMSbdVP333NnY3QZSJhkaSwL3eVHLg7HYyVoeAFveMKNAQ34fIlIH/pu2mHxs5Go9XL31WJIwRFXchOzog1J2m2n/fLhv99QXNdGVatmTJfrJEsMKQvjqYl+4f6otUv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk0BniB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk0BniB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2F6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747610993;
	bh=WPHfTxoEMbDJFSqpI/f3mFViDgQ/JMWgGWac3+TPTWY=;
	h=To:Subject:From:Date:From;
	b=Gk0BniB3+KAbTwAqN1iPIz2VstBYzAz2DMn/mL8tQWBaKnmnv0Evpp7HSwliTisKm
	 Q3sekLdzAEey+g7s10EKwo8fdIqJT5H2yOVa2aEktj++GrrcGNDzpOJc76zaRyKN3P
	 9XnMQU6F4QbniAm1eds3m2V08aDN36b7CCzoP670lzPWX0Vx9qWN4sS8CVrs4J1BjQ
	 rIpPnQW8/LmKdAmyi0nQR3jgsxXMUOpvw9HW8yiZ/jPdGvOBalDSFi3Zab7S2AUYFx
	 4JtV59yRd57l+ONxnz8+bFftjXg4fOIKtzdaBBjcIIL2g72MQ0EPdHnfwlgrDYyTYF
	 ieDQG44ssiJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9491AC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761099357.24062.10380059940450558990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4296bcb01fab1a8ae88601b585b804bb976a3e2579681614c100c80f1ccbc850
Date: Sun, 18 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747610993
