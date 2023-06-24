Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92BBE818
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB10AC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687590188;
	bh=LqXyxhNU6REGZNfO25/bWkAFL24CvH9LoDFpmjjjYjg=;
	h=To:Subject:From:Date:From;
	b=ToUMEnS1lcYrPC50s9TDAeHudP0uI9+U1OodmFW8g+GjYLhQ4JipUECFYOxr7Tf++
	 yFfjAMgsxWBAkSjZiNmeIaCU9VbrMAwb4VkIyH4qyc03B3sGt1HM5JEggsO6ulJEXR
	 /Uu7JhDZw6OkzxC7pBNcPv0GuG3OT+T9tdZcgqa4D5P6SeeZrvJ/dm+q7S5ZabiKBh
	 hn8xMJN4uitrhgeHbk6PowWf8IXJ+NJdt57c2tDD7yE4XE/pCqvMc3paP86zAi0HrL
	 7wG/hPPRrp+rPXoUzV9899GYvoTy//YRVqmexYM/UY+jHKLuBeP5Qe0xOF1Tk8eQte
	 vsR5MhHqjG++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6268EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 07:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168759018873.17807.13456443468595257464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8da57a5d89705fdb7f5ce4ccaf80c1781a3c5fde049d2cb2fce91d7ef9b452
Date: Sat, 24 Jun 2023 07:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687590188
