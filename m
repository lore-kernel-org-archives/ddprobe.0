Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5631FAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BF4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666079453;
	bh=Pk1y/7/5SMtj54ydOfDKXvYztgLpjPFNvWxM3N4Tg64=;
	h=To:Subject:From:Date:From;
	b=FkiLMQidazOSSgsAwrxA2sHBHMKGR9RxTZFZz23i6ppRFjwieMuPlVdB7U7aheqgx
	 MTSWIKq7HNgiJuoQBM+BiOmConraI+L7iecTqOIVGFYAIGnWJ5EBRNZdEYEN3ZGyIa
	 nNu/MJebo0poKj5b5kxverfZEtxBoMqRWgWJEUrArhpNVh4Oqme/KAkQnApbCKG+5r
	 TBZ7vfj4IqxUZTik5LeNVvZvm9MU875zMBcIZUoi0sJ/QGpzVU2UkehYN+jJqnYXHP
	 EoaLUg7Q40ml/6c9eLYW1PNUzog4H3TiorNprzx4TFc7uH5ar/fsp9/ZAE447+JDQp
	 prJX6pfzP/75A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE7EC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607945336.14623.4172749232900393217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4741ffc38cbc90e82c26c0aa3d4acbec2d85aa0b6909645b1c30160a9242fed6
Date: Tue, 18 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666079453
