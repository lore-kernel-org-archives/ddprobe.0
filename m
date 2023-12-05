Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9E459E54
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euo/ABuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB06C433C9
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701779896;
	bh=NWMB6LmPQAzxoOTig7iOkSQyAAUBSK+h+LHQkIJ/6GE=;
	h=To:Subject:From:Date:From;
	b=euo/ABuyKWFYlqPcKhtLMt6nZNlaIUuhqminQlyWJUQfdAFcjHPYhaCJF9uvlcOlQ
	 5kPxJkUhk178XYZ74ySo2MM3qCXjhVsffrkvzQlpCqvVYmsrfD+7IqM5PojVdmxc33
	 S9yideYdf3HVME11wiKl25g4+lZu77jBwjUl4B2ppzy8v7aIwt/s1iKsNAQRmcSqNH
	 gcD/oo2EbQbpp0E/vNBdzPZrIbgIyre7Sj1ADmnV9rLudFQ4z9AePhfbUf2DG9GvFM
	 klYZYxoAzLjSx6f2eEXV1P74z1grhm7yHzUNV1I6mb7yxseswIMu9GQafoq9CSfV1W
	 itfa2N4aplItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64005C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170177989638.28404.16342311257357185795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e41ef753c340e9e0ab1db53a5bf3ef12fbb71eab716c0d393f39713d68dccad
Date: Tue, 05 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701779896
