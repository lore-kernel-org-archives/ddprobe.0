Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAD33A1E8D
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766711634; cv=none; b=sctnr4Tv9EoRQH5bULBHl/H7fSH1p1GJ+M2mDL1NHAs3iJ0f8mcZWJYlDgIuam1jOmA6yXbQGRIF1r7dILYN61JiMyrZC6bw1LDYRGfwTsrzrEtudcwQrxW1Yi2LC3vDgeHD1WrSB1dm37PaqhO42Er0rx28DiENdFgi/lb/Aic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766711634; c=relaxed/simple;
	bh=87GwZobfoGWVtEV1wHvnrF8QjxyGIECq6LpFrds7mp0=;
	h=To:Subject:From:Message-Id:Date; b=Dwes75ZfFi1r0VNpn73zMtzjweulZwYDLjqT+mCeyTMm2WoUVh/6Xpj54FsRrhSQ9o9s0hb6h5q/P8oW4aMBSpebScmJWIrncl4r4euplAS7rQRbJKVj+5BOAHVbQu1Fw3BaFRXG9tHfkR49QfMl2PJk/f6syKpU0+iRF0cEt8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIadL7Bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIadL7Bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9157C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766711633;
	bh=87GwZobfoGWVtEV1wHvnrF8QjxyGIECq6LpFrds7mp0=;
	h=To:Subject:From:Date:From;
	b=YIadL7BzAqhTf/m6eqfe8/wZdyAIzGahCJTr/5lUUw9H/4HGwlFTzD9DF4uDOlThQ
	 eu1L1kdBPuWz8OE2ZthM6pFr3G9wNcRIsxR47EQN3iAroKDh1BRYxVgfhQP2H+bqCg
	 3sFQbXFQlrbIAvkqrIknrxqSYXmoQeIaM/5VhXPJFasTDfhx4adsR8WOnLFfidbd4+
	 9DKBEiMApWLGU+o73XTzTvkm2vWzC44CAQBelrPBeeEXurmmJwETcBmMkiQFy1Ri6X
	 HxTqire8cA22SgmFTLAZtsoh5ia+ngm+KQVbPFNWChydP/dhbfydbAQbdn2B6f+sHd
	 bBHKF5vnjsO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CC7E7AD73
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671163358.16030.7934384022095278440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50266a0967dea9a221630ad24e419700f70a2abefc23db7db2c12838bf79f014
Date: Fri, 26 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766711633
