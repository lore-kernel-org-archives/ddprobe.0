Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFE72261D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720373783; cv=none; b=GHlhiepMKqmZPXriqTmLNPnG361OTzT1fhnOoNqHwu4Hv+PV3IjM//B6ge075aycu9L+0YLuGBCIvBr1i9Ts11kFbUXkmYoIGqdeF//aBawhlrguz6jbLNutu3/eSda4OaVGlHOzI4uDR2ARmGFfTjyOOHPDvXbGVQMymfsZUz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720373783; c=relaxed/simple;
	bh=9V3XzBbQxAJTlpQaue97hQ2UwCOLoYxhaiXca97OKJ0=;
	h=To:Subject:From:Message-Id:Date; b=o6nXbP0rFUc2wCLVg+l1xKNsjS8wQcK1Y2YG74xpj7aMj0+tM2oOfaLdzxN2rQPD7yPcMeNE7r+8Gpd+VJwpl3Jw2f5GmYgAFuVdIx9H0wFtpJ1KHLrZLy2uaojJ/8ltJ8pobnZy+TX6e2AQeYNiqFLmVDCmRoKDMUjTmFMtgS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suR8wgwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suR8wgwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8875C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720373782;
	bh=9V3XzBbQxAJTlpQaue97hQ2UwCOLoYxhaiXca97OKJ0=;
	h=To:Subject:From:Date:From;
	b=suR8wgwUuBmo45zB6KDxFlkeQZ3bPbhyEaaGFp3O//k+mnuKxLQnzVUAzvau3c4VV
	 KD9LYQJpr6Y0mS6Raw/JRxLONl9IfTGzuVHWOXVEICdss40vBn5OdC2smRS5gWoXJU
	 SpdcUBMiBIN4Ij49VuayGtVvd7HGlOhH1P7W5+xeOXLCvR9uHkuAvT509DX+v2MojF
	 BYVIiOq09Vgl6gWKlj2/Un+z3xJBPDgmrNEW2ddVMXr1IwqKkBoOmORdSh+74UXb6X
	 b0CHkzA2IV8XGoCCSqN/SNWXaxUjDbtC9sRTKSnolVsrRGTdAtbRnWYKLt9NB6CR/h
	 KL0oDk9gX0z+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5499C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037378283.29480.6087662350039269599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305357566ca3f8701c866d03a430ac9e81252a8f172ad4c207494738ab61894d
Date: Sun, 07 Jul 2024 17:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720373782
