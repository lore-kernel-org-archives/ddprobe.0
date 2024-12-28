Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444C7433A4
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735399554; cv=none; b=aax5xnA2PxqCSiAKaI3rDTmnWCvSDRdXiTgo5K4/7mqMQvInzJpGA41wteIEXnZZFxUPDE8QEAtL+qFVBnsad7fEUWK7gGRXdtxupSidpxuuJPGjYhdqGZZHZdzm5u6WgRjUduMQE7Y2TZGnWzX186+3BMXmOTyCix3Hbz2oxXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735399554; c=relaxed/simple;
	bh=D9P07SceL/L4QqoJjA6ZUfYa99oIUMRhJxDxKvA3vjs=;
	h=To:Subject:From:Message-Id:Date; b=EzdhPlC3GJWgnK56DqLZiUiHmCGVNmOC1rQPtgwyOyIJcq8lPmyeENKpz6kh7IHYTt97bCbcLF+I64OKRnzeBGJS9pYgJxKlB8EtnPtSyoWbrakkKFqjILrOqAEH8JC5wFNOvoS2fSBMk4L1l19/PR8hIsT9SHdreNkEjEF+idQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqZpWn+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqZpWn+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37D3C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735399553;
	bh=D9P07SceL/L4QqoJjA6ZUfYa99oIUMRhJxDxKvA3vjs=;
	h=To:Subject:From:Date:From;
	b=HqZpWn+1o+AgHEkyqNyMMz4mjpScs1QP1RpH0iEuPXAELkwRx71NMfs7jczGm/z7C
	 QmcoKoBJTYeZIT7rEotgyvgP+84VF0l78N/pe9A53A1cANQFxWvvD8pHMsfDUCBxBV
	 W2kizHOsvdNZWjj2pB2riEIiS+tkkiykBWjwjuJkeE0qZK0bxTJl95iO8BWSzD3FwG
	 SqazZzLe2udduAeTNOdsMmX9iE40pQ06HnNYIsLd8eq5YX9wS8d2Ez9Htew9DJGuiF
	 L1gM4NpHHUseeOJrH0zC2QtsCrXdFN83zNYJ8D3+TU4AyqzJeRxAPkptrheufxwSSR
	 5hv5Tj36rvNdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E0E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539955358.18954.6263134716593400048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa1a0743df19ab435fa03b8df1de75246f2c84fb8702b498a0fe2f316f346fb
Date: Sat, 28 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735399553
