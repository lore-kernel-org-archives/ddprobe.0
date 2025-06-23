Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4736A1A08AF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750653594; cv=none; b=WcEeTUWQ6PIB7nOkHyUYxn2ECHk+ioHOY5F7/l6bp4pTlJont0dTLWHTV2jYiZoySUB2H4cALMBGw2UOLdrAA64OqYOjjWCKPuC8Ybcf1O1jpT41dxVizR3S0qsJzV2hSc53XfW2tPOjTSvT2E+q4Nzf80zI8b69iNm9sf8QX7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750653594; c=relaxed/simple;
	bh=E/ROZk6KoQfFXMmv2MIXeHRlYCd4jUXe1tNM50YJzMU=;
	h=To:Subject:From:Message-Id:Date; b=fu/X0vtyrGIkFKLDA4EzOVUsu856ICD2TvXBg7LCbau01oTY0+VUrfBvr8IrSNPuIU90Qnk9ckV4puyUW+TfwG7xyar+sgjleR6jEppJE+AA7HoJzeLwSq4FSgImkW1Hr/ztt3T+BFI61MSpT+no8fxi4DtiTlwoExP44R6X3Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftTwPNpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftTwPNpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750653593;
	bh=E/ROZk6KoQfFXMmv2MIXeHRlYCd4jUXe1tNM50YJzMU=;
	h=To:Subject:From:Date:From;
	b=ftTwPNpjTbAe8Ovlp+oxSxMBEloEWJjvuppD/BFefZMbKk4yIB1xH1I7O2+kUx8fN
	 Alzu0Ohs4+miOGnKPJbd8aGRf+PWNd1k6AeagPewPXJdI65hUrvnbNzx2uKMd9c3k2
	 35fAal+ihdorXmord3R0eVh0WuQYHEcRGJLOWCzA4+f9K8bq+DVWl7aAKYh7M98esN
	 NUHZ6bjPj23clKSTEnAPGgelBnNJcaMW5kifPxBvt6lvOC/4BIb4yUrTA3+fyQIxtS
	 3DMlsJZtYCpZ4ATnfmeyEBoW1L9xqo/X/vmfDkcu8wVYBLG/SmpRxuhAvaYo5E+P8E
	 MadJIX21E5onQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065359357.23014.3970476064034302999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b9745fcfd8c1cdf895553039d096c7f65964324f9be36587df67d32768428c
Date: Mon, 23 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750653593
