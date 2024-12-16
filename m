Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381CB4414
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734308754; cv=none; b=NXZmHzKulNyqiab+r26lMVluMQbcBXXlGsaFyk5N6Rd9SGqDztxgpM6Sb1TvELCj1K9jZ0cxJ0dJA4r6hT6RfE1AouQey3++BUn6RRpFXuEl8QhwQzPRTdg63f547d630tIz/1NULhi8PM7+FGhOhQ1jLMc2VCGQMWua4DQxzqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734308754; c=relaxed/simple;
	bh=J1pTZ+JAqkbku63Bxo9q4K6ywUaDRPubvpLpYinc9Gs=;
	h=To:Subject:From:Message-Id:Date; b=QAIAVEnSa2PpXU3X7BBJ1/nLZ8YDaNMCRSO3YviXRVTeVBx10fTmIMbqbfcbFW9ev4C2Uv8uMKs9YHK2/s5Bs8IdBMzghhMy/lqtcmRuKBPyw+seSU9bYZXtgSWkSIKDc+++DKnqmiRPM8e8ofRA+3Jg3+I/Mjn/U2+nAqMkjD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTd19FIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTd19FIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F58C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734308753;
	bh=J1pTZ+JAqkbku63Bxo9q4K6ywUaDRPubvpLpYinc9Gs=;
	h=To:Subject:From:Date:From;
	b=cTd19FIu4Co1GAJHK7peBKLPCuSgrtwGhzq5J3E9bb60RUzk/72Na0L/N56TKz5jx
	 UzrhOJy29V9qDXT03pFuXC1zZVxWqDqcRRJ3tlfaxnJuK0DyXWyE7EQR6sCxSBharK
	 +vMn3DjEgMIUyOiyydB3UZTHhY+WPdk08LrI0KhFpDRLNU6KIHFmO5Q1fV5yk27ogr
	 ugpBOkFiHXVmwDnZNmQXwGBOo1b9HjX+PesOnCs1EnIVCex1y027WR1+YP0J6A95IP
	 6th5LCo6V8F8yIUmbo1vHKk3+pwqiFYB+Yl1BiRFpzenCkT2Fyf9RB1o4DWULaIURi
	 A8x1ZOBB42bsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA05E7716A
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173430875362.11364.9954845874862748790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8928a27ebc5b62fbb22a9bec9fee6664f495554b510588748ac71a14978e9de
Date: Mon, 16 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734308753
