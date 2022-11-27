Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B509A7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E70C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669519254;
	bh=4a8HTS26wYxEgTP1tDE5JNTOpdm+f++wOG3+6Sw92Ao=;
	h=To:Subject:From:Date:From;
	b=saoY4SwR3it5tUaweSqG0X0LYGzTGGxQqrg1OrRqAdaxSIFucd8vNrV7jpGeYnMYI
	 PIJ/zepSpMwm5LEFEhIPKecygLRdwLeoMiSnxqmiQrgRSlNcVQvHlK+H7WZ5oHHWK3
	 yMppQS0FylGL/XA1pZO8jlNs28g1/xlK9RU6lrn+ObqtJ++W6kzao9W3UwLEb05gzg
	 j3jwDNP4+gEj0ZDrzBUUiA6hwfukpoZHONIhfv5AHrlGQwxrQw0b3S3Az51Es4gKES
	 52SRNME6kn/SXrwmjHXpRKjjqvPyjBkt5siigO2YKgKM3nCoje3HpbBTITy+O1whCK
	 yY3+m+QiUIsqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542FAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951925433.6417.718142282620375688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dc9b706a98c4526d7d43af2bee5b21f67e1b54423a61538c2781861a39f694
Date: Sun, 27 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669519254
