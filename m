Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEED17BCA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719977723; cv=none; b=Z4pRc55Bfduip9E6H+BA5DnnlMrzYEpFyZC1sWavl0F8LBm8R4mnx9ik8VoISYdmaihfuGq+huvyvdXqg5fOwnYzQHnHmE8251I+0aicUrYb1ynW7iaHytZIlx4G0lVdkK4wamwVA5StaKsROXyqdA2FYjO2eMs7GiHPTKmLsDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719977723; c=relaxed/simple;
	bh=k1cXqer1w3gqmxIREsT5sNrPnUxPn2sKkSRZNauGvc0=;
	h=To:Subject:From:Message-Id:Date; b=TK3HTti+R6b3Mt5c2P8O0jwSxVWgbVaXI8vMVcMjreKvnzU2DAXkW9micb3UULPeU/u7HMdK7GDrWsjNSTLCM6nQcKIAkUHhAb1D4Kh+WrxlplcTzBVQYa6gxaEKDiwo9CAY6z7CFrs8f/r+KrtKEPiAbuqliB8GDgaEZFC+W/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9q0bX80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9q0bX80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8488C4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719977722;
	bh=k1cXqer1w3gqmxIREsT5sNrPnUxPn2sKkSRZNauGvc0=;
	h=To:Subject:From:Date:From;
	b=V9q0bX80mKEYpggKdq2DsZgPd0RyDM96bbYfO2L401DhwLIBeN0btNLaKDxL/EvXu
	 uJlas/265eGMW10uphbGkgCpZ/IE5yJGP0leJJhMo9yQAumviB4Hu7mntZr5dtvncs
	 QCBDlqBuYyxR5Wx0rNBIkG45OgY+ZbAG7w12nWVOE28J6791FeWmbtm5GsXaC89mJU
	 3QxOnwu0Rm+l3G7UACaa67GQbLgRnGWzLwplg9W58yeX6077QEjZ0bhbcaClSWEJVS
	 p6VJ9aN8lV8UYCTmQYyf4eCEnMQ/1/0f72e5DSP7ojZx3RofXMQFy3jTr/ygoWI8fB
	 EOQMlDtFfIqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05F6C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997772281.646.12255365324944936974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb302a4bf5e9e84dbf3ca62bf2dd183d7d965009c9886a230d9de75ca2275fc
Date: Wed, 03 Jul 2024 03:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719977722
