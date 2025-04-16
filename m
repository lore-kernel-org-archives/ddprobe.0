Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BDE2DFA49
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744776594; cv=none; b=V61uTDEV5Rl971urWY5yRXFLZsBtU2kT1K8XxPGeBbTzEcfS9dSY2FFwcWjsa19kyGECWVDHcw9Yk8jXVhZtdOgIC22j8hIyzeLg7ZaR89ycgsRuqZPT9ImiQvW4fbZHtrNZovSxHJ8uBydoYrxZTMF71QxXZ9uJqBDsZapPh2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744776594; c=relaxed/simple;
	bh=vCoOhuBeLNl0dVp+o9+dqr4y7VHe//mT9FlfYEptvjE=;
	h=To:Subject:From:Message-Id:Date; b=d1H0rKIzsXBq1f9h3v2nCl7U+jSR6yWmVID3G/c1ZsbLZ+OlPVn5wq9CMdrdxO5YEZpJ8Rk6gWXNhAvUzYm6roIzxVwFAhDcxQ+UhUVAa5uPtrIcSFy7zVGr0CSUEptAoHCebyRE55VN7GHOAI77rsYyirXLBAybIXD0xbKYg/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rARTZaDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rARTZaDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B860CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744776593;
	bh=vCoOhuBeLNl0dVp+o9+dqr4y7VHe//mT9FlfYEptvjE=;
	h=To:Subject:From:Date:From;
	b=rARTZaDtKYv20N7mk/fnh5DSO6kM4DdkGFeDA6mxn4Y4aQiTgbEO/qKR9bC0KVFM7
	 qQ6pXKq/QZNFdyF3x1pVb/bS0Qadg7bvYBsbm9w9njOtzc3y8zVwMl7ggkzBqLXRKn
	 zcRuMkUwGA0/OE/a0MYr2kGV6LMscanCuOOpjcSvW5TNn7gCRi173YZY212iYWQW8/
	 P16RpnmgGTDGCu6Qh2MClh9gnH4GzoJKfBlexskUgUo5cCBLXN8bunVD71WDejEv6+
	 OE9E0D6FdQ4I2G2OJfEHZxgBuFDB+OTqOXSv6zuiexJbwcCO85sgRdJ5pws0Onjrec
	 WtnPXMHghd7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B819C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477659361.30107.876195390714008574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10eb89c74fca113f1109cba150c2723872a3c36735ac0369a718144016734f06
Date: Wed, 16 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744776593
