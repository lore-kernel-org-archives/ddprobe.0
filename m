Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7E31FDA84
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737984954; cv=none; b=b8zaHJuSS5QOFzHbm3kJEEftIUMvMRaehTmB++j1woLGr2gCb18orK6tBOlHxb5WeKoBMQ9Af3CLv2aZUOabb9D0foLYosY9hW3K6FKJxObt/RAoLt4fxcw9l3GBfWlRG/vja7jzMTA0WH6B8eJI59Pq4/eR6PUOKSoJ9hbciyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737984954; c=relaxed/simple;
	bh=QyxwqTSZ3sJtSOMRcnomhXPkuqRyAIQYNTuR4X+kPBw=;
	h=To:Subject:From:Message-Id:Date; b=Ss+gHpdCDYRwAMRsDHwKyOZft3f6M95ekH40EOHuBG9YwpoTt/TrCURyuT1l+GYREVeHtXfaHeMZ0ywmTCDMzxejweUf09xsi10y8iu8gvX23UhZvMf0+VQa2J8dRv5I5O5+53/zmGNXiKoeRC/AZm5xEEvku2gPyA+4YXVc6LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGnE1lER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGnE1lER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B01C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737984953;
	bh=QyxwqTSZ3sJtSOMRcnomhXPkuqRyAIQYNTuR4X+kPBw=;
	h=To:Subject:From:Date:From;
	b=KGnE1lERX4YUX6uRp2bi7cRdpvcGT8U/KYHpoGMw8Teyml0XGx09KEe73DTGdqFAD
	 1n0HC9EqRFQ+vytn1GbBh5sl702guzFFQTSmwz3aPtGEbHPGifqdO125J8lsEqt6Sf
	 rqBv+5plmMhs51Tx+T9S9xo2007ocHFcfU4SH/WQ9azKp9G6H7mpm64uIKv17Zj4n1
	 W2opXte8NRHMwfuyoCHfd7VDrmqqUwArVYMgSkMaqW3QYe5YA4S4AAW/RtTbgjCkIK
	 lN9n6wFCg8IfeRs5RtNZcv/VUL5aFkTlv/ksldGzkdYYkPfeaSM3+KepBkj0RqO8qh
	 95mX7SJ1m24KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A93C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798495360.2062.11500675334562662501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce731fa97b495edd650e3b505ddc527e100c79bca0042046f1481863547c4b9
Date: Mon, 27 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737984953
