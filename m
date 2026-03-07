Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAF01EA7F4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772850894; cv=none; b=PBAMZDg90Bo9V34EkvIllhl+JV7ivU1DWCECiAP2+AqyUoML3/wZqf9bjRS9bY2P+jntBktX2+hjzNyDenzqrrI1BW81RgN0LpOo/A97to/XpKrgR54NFBW81OCdHdLAPlUCoMw+MBEV5QnGX06S+VKyb5gHXQPh7v0aupdVGss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772850894; c=relaxed/simple;
	bh=Y6W6AS6/pnQged6GmLNlxCg3al2PBwR2Hnn4ywC9VNk=;
	h=To:Subject:From:Message-Id:Date; b=ilUYZ+gB81i3QIk5AYgCU4owdUjQU12mKyQmTxw8vGMJ11QET5qZn2iAKICRZ6eXhXTj/7bhzOx1LPdKaLUsKhlvaWVusBDr8RNHLpy0i0+7eHiBQBOIaN5b8MJa9PQkUmys1J9j+C8P58KFYBBejDgxwM6GBsVIrg2aIGdT/sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWuI9ram; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWuI9ram"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F0AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772850894;
	bh=Y6W6AS6/pnQged6GmLNlxCg3al2PBwR2Hnn4ywC9VNk=;
	h=To:Subject:From:Date:From;
	b=pWuI9ramb0g3amdq7mnVttuxLopl7QcxNHz4da4Kr+QKQj4XSAMmABUYz5NhWh1Ld
	 IRlaWd3R3Gg4ntLw2/kc3m+UKvCHqeEQUGnKlvsUes4Fx7cV/oTEjuqiCUseIUFZo0
	 /kzxqvLP7sLP7mwEZEI5XTrS1xb+JGrCl1wdT30JcDFdJ3ZO7X7rulEyCkag/3N9g8
	 2hYlNsejSBVOC0guIGvKOgz/BMI2i8krl1V+ivIEPiRFVSqaoJFWVmkuq7UqoCMdkn
	 g06ydt2wG9D5l4Z6lJNjCEoIJwHfNnTMYDtVbMi71vGzk8PhclPMpjs9S0x1GBLBI9
	 ybzrXcmynlq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BDAFC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285089359.14239.2347284273616275989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece1514b79cc3b1b861e97c0dbab8189f8471a87588b4c9fed59ae9f1e92e77d
Date: Sat, 07 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772850893
