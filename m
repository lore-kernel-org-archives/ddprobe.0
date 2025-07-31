Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D301DF25C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753931393; cv=none; b=HxWEyXD4dyOnCtFeuafdGCRhDbfAcRWTnbzYbkRC8nMtB6ZH+N58/5d2IHCUFNpSYQGxLAjJ7o4TQnBLrFHum2xHjPEhHIhM4q/MHdsvFb7AHpeOlXZ+pKq1n+WKuO1hTCRGto8H1dYQyvC3VIw2KDv9B80Nj3LwdRvTdfWwGXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753931393; c=relaxed/simple;
	bh=Yah9X8gIk2v5xwcgSjDcMbwgVzFo0+W2AUKYz+2mEbA=;
	h=To:Subject:From:Message-Id:Date; b=Ki+bcQhJoHJvMWSaziabMWf8ohoqBVSaBP1a55RhntRLNhd3K5y0oZQ3dtxInvkkQ/enzFe73cuC31wmmz18yYG2GF/Lt3MKNEFIUxN6x/pLALdIdBRIK2qD7287fiE6cXgRiA3KfubIwhSsq+67QMY5x9rASmiYq3IEbQuPnrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3jsuh4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3jsuh4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0719C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753931393;
	bh=Yah9X8gIk2v5xwcgSjDcMbwgVzFo0+W2AUKYz+2mEbA=;
	h=To:Subject:From:Date:From;
	b=m3jsuh4yji3NpqiBytEsMzQURl2I+Zf7R7PwZxYG7BqmJaDhS7bG6OWamBCug6oqk
	 z5e32bR90ZZJl4cHGhi/pcrybcJbd1LvvchBybxI8nrEsIesVpWvBETywSyMoFqnZg
	 UURvvnYWkR5QVGvOTfp/ArM0S4tzdtF2R+MG76Q3lbUCGJ0fsGsstI1Gh10La0D8iy
	 IaWgVNiFdf1oAfYZGLMRnMmvgxjUny9Lhbf06sROmGKoc2/D8abQw9IMuooZd/XTKC
	 SJOxqiSdtYgRPnghd+SIm5tlCGWyxySFw8pj372+YaINZ8Lhi9ACOE5cKXwVWRvqVE
	 J6qxMAphcd3fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D10C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393139357.3276.13212318337901393107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91647a7c439970c334db5c99e581fb1b9899644cc33d3d9674881bf6dd863933
Date: Thu, 31 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753931393
