Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5396814883F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790968834; cv=none; b=M7HICrzuMCGB2RjiSFnvyzsVCF+Qh9A0HzefzJZn0JWUA5N/PGgjJi5aszVYEz+4TRbIzw+mT5+CGT1R9gzpdyPozsf3hVt/Cm9HD7OdEiOP+kjuabRhghZTPdHU2YosIXmcQrx5MILn3nO33Pf7VAM9eEYp1j4U99Be7zAyHQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790968834; c=relaxed/simple;
	bh=4h1TCOYkM6pKfyO52KzkEVqk58m81qf3+tD4PzLLuAY=;
	h=To:Subject:From:Message-Id:Date; b=CooNYs4UQNxsTcjS5DXH1COBpa41RC4au5Ra2MFCcwCP2eibug1pcx8KvTcAY1ioPG8Ct1ckbELn9AzHCcBlc8bgpuefcLnjK4Ft9cEUi3bfKWvJW+1rPhJdYFiTZ8UOo63D5SgS6ROSm1YLy/pPbrOu9Y8WreB3Uf+QuGVHfiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWWr8Ldi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWWr8Ldi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF1EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790968833;
	bh=4h1TCOYkM6pKfyO52KzkEVqk58m81qf3+tD4PzLLuAY=;
	h=To:Subject:From:Date:From;
	b=sWWr8LdiJXt0VKPAskzfnwGcUu9q9xVNPijN7mbV7YQG9orbG2WFJn5gqbV5X6k/y
	 iHgK8jg9l+b4CsZ+EkLEzHXMzH1a4qyZAudbHOhlcdf+8bVR+/pftKyUYi5f8IB1zb
	 ImmSqZdsPp2VReTtUJsy7pP/PepBq8ujpWJm9+5JbQuvMMZAMeNd6AOC8AyOWS/b69
	 uigKKKrCSCa2payumDiRjs4wExWiE2BI7UMn/IaP7tkZ3YwJYRbDEUuY3iAcmeIjbX
	 t/69VoABBKnlRa0QBgjZw0VWRaygQW4sJpUny8WzAiofSG7MKefTG8xrtx9fDuKWzg
	 lFe2c6ZrCkstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF688CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096883370.24485.15197088523312331780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb56da58475fc86941e9f6b668bfc9c304ef73022a0291752978e8be12fef193
Date: Fri, 02 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790968833
