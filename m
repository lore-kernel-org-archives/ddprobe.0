Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420734B1E73
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747690794; cv=none; b=Pld4ezy0f3/fkOLw6EhXfV0tExOcXcyew8Jttbx4IA0kv68QSqoErgP1BKqptf0tLV2C8jqcKhaVAsQbpQWbGiEN8LDmtiapsESoPFh4VVWuehp7scA1RZxCi76hHidaosbU1PQqb7a34FUpLErVtxfSpH15qAllz+CgjF3AIFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747690794; c=relaxed/simple;
	bh=a6/yolDi7bS0/qBWbNX5qxjcnRhu6qagEqYcEwrwJgg=;
	h=To:Subject:From:Message-Id:Date; b=fyY6iwiuq+9GdAu5hFAevHVqj25BO44CQMw7BJl1Z+U3g4jrumwkcuqxWl4oxR1kiqPvp3JVGSAlbXmt8RE0vwq6Qh9G+a9r5mmGUgdbdRiYOnrQMXJlLfTyhau7DJjyaxtR0Dx63zDh51ERMHCAJTOAxnrSh+VNY+YZBNsRCXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr4YqIEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr4YqIEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747690793;
	bh=a6/yolDi7bS0/qBWbNX5qxjcnRhu6qagEqYcEwrwJgg=;
	h=To:Subject:From:Date:From;
	b=Qr4YqIELPi9Xk2KxaMs3VpWQkejS8htB+0Iqhk6JEMZaBo9k3TgWcWxFgqzvJaoJ6
	 r2ed+UoaKKLkZuilbcFWquuNNz+DIfC6wc+lM2KbvUBoMioj7xtw9YL6V9bUhY1f4p
	 NxbKuq1D009n/xNzq1GCbFdsWs1LBw0WNJw95PuxbSmCaJo1Mr4sOWheQS75M56TCP
	 JaxKghUX2lCWM5mAsu0y0CnXcasZO3SJ867idrzXr7OY2ULmBhL9j+q10sUs+Fw9D2
	 JqMiCSiP0qpte9mCLpyyfTD+6OxZwChqro6U91SiKzirXpQQ/BHBZmeI8J3VIwCyE8
	 YeTfF4hcrzjYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE4CC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769079357.16898.11430862368019121532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a1d01177be7bf9b9fbb16a42680897047080514e0b78af2aacdc619b6677b3
Date: Mon, 19 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747690793
