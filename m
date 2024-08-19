Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424021DD392
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724106354; cv=none; b=Qqz4nhRk3iI1TdMSCVTmtFLQoU+gtOvP6Tp2tfy++0newVAGQQ+Vj8uGTtX3/9S1mYG/Pw8ZEi60hVWnoOti49NRAwiJrZYWdSYjSVR5ejycuDT2oc15AKvXi4XMw/VgJcorphiRfcYj1RPFYVg+5D/qM6UyB+wlVlnO+2ZMAvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724106354; c=relaxed/simple;
	bh=cBG1UI2EZNcpNcoEzGLS0x3TxR3rYeWEJtcPmXpTdpA=;
	h=To:Subject:From:Message-Id:Date; b=IJXrql5ow0xGNMzVd2GU6wKNwtHtMP5/0UGCEIZTu5YphLig1/ZaDE8BaRF3xzQUgqiai5PQ4eK9r90sgQbUeRpX9Cb1/4teLjoxINyRTNKY/7uB3SKkXLmttzNgbHv2J+lxDorjTv0LUBY0x0f2HcJoqlEggasOLN1x9oc2qxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cibzBdyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cibzBdyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24C5C4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724106353;
	bh=cBG1UI2EZNcpNcoEzGLS0x3TxR3rYeWEJtcPmXpTdpA=;
	h=To:Subject:From:Date:From;
	b=cibzBdydRKwD4g9thFkbE363SxHrFT5J3MKfOf9LRVFcJMRahVqYnYVCKNFIC15cP
	 bWpg2fqJ/Nx0BbRn+ph3kQUqPUd2JARDzFKYFlc9VeLGoguafXu6CJWZ/oDIeMCs3b
	 siOU9yoTOaFxGg9AetJ4RVV7X8oyoTd4q3uyF4KBWLEtfYsLe1nYu8Oto7rfc9TvaL
	 pq+qttmEnr4i9xQRx3LtlSJOR3bnoQVzvpn13SOVaRhJRJBqQXOzl7VJixfbqd+TDJ
	 U/ahxGMOHz7bBwZ7oX47zwlmeCHLzqBRv5PSSKtwuQUF65w3LjlWA3EkBjaocFVhIq
	 hIDpIYB3Eyy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BB4C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172410635365.11478.16973761611869227265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f56756ebf7cd71151dfd2e3d9efa9340bee89c8bc5ff8d4573c50bf9babcbe
Date: Mon, 19 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724106353
