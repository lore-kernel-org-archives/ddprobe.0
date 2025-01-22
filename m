Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378C9213232
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737550554; cv=none; b=BUzi3RWPP4OTmRmR7ovrUyDy75B0+vRPuuuCHX6R8r3nV6AWFx71xFQR2BiKQz6yOjtlBZB8m4tnkS5nVmRXZqHQQcvDeFE3yZEI+XrfGKtpnm9tOjA0IYTKFRAJagluGTeI62qfUmERm/FzKawIohJiNXfTF5AxsT0qxDSmBfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737550554; c=relaxed/simple;
	bh=zPPcjGN5xBf1Kokv1Np2Ig7BnyXrUcb8zVyfQQ7EkpI=;
	h=To:Subject:From:Message-Id:Date; b=QUNCtw4hjJy43sNtpJMqNg8RCBbhlLwrAYj0NTRDL/msv2/kLVJLj4zaV4JA1Xtjdh9kK2j7KtGeeLVyMdGP9d6em6/i93dKF0fCOky2LM5pQ5MGiEa8DEzdJRgth/b6WDrxpVVRJeR14yvfgZfiVhxqXN81d3S+tGnsoitBx9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFhWU9XE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFhWU9XE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36C3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737550553;
	bh=zPPcjGN5xBf1Kokv1Np2Ig7BnyXrUcb8zVyfQQ7EkpI=;
	h=To:Subject:From:Date:From;
	b=BFhWU9XEcXgZlilZZunSy2EKXrsk1vU/AcMBFz/vNydh86SIbN28N7g7ZbW9KhxxD
	 0gZCb/MdW8BMg7FSj7o7b12uuwpHFTMn/b+HiU7roQ6l1OUzbUrtdGtqDkpkDrPQI1
	 xLqMxS17yMdVDfN1/dIXv9d7z9S76u0Y++r/RIBLpsMblRp0F0McGJKneamnaDrnYk
	 KmivVDF9BnovR5yJLouMCTMmaKT+6BmfjnZXuY9Z0m/x/h89rCc6NgjDClEhS6HlgY
	 glDdqZwNVET50Nbjx8sp+WcT0orOsn+CYNRLS/m/w0kSuVgdBw42HYdQvlYrMz88AG
	 3hcnlp+GBKkQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF7C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755055358.12891.831134163667619910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a217b689e3ba77278e38094001c87eaf867cd74cb25a1307853283a4999afe
Date: Wed, 22 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737550553
