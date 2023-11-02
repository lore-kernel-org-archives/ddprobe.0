Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201F979F0
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/s5s2Us"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E93C433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698939496;
	bh=HDZVX17MybR+ZziEkgga+p0OgHZ0q7IzdD7mN+ugJ9o=;
	h=To:Subject:From:Date:From;
	b=l/s5s2UsqvNM+e5+hqlov/rkSDpAbpHfudjB1PWzJDCcuBoQCUKZXufj+0YmVZCK/
	 KB2LavUHjIvG/C5MxZnoey3M+JBSKuXrFVaf++pzGiarBTkgl9XsdAKRKXUwu+WnPz
	 HveEt8a6z14dcAL65aNuKibanw7UCk5BUlQwJoAc6ZCk7U2MWcVIF5fjYKor420fFk
	 CL3tS8lPW6DQ706pnyi5PNNDfuQQu54xa0yDNgpFmVmlP+W5tn1rqrRJh/QF25rO8A
	 U/s4Y2bCWzr077YtLXaP/OSe9HzhooyT0m658e9K9/BAZkw9kojCS65ecdIMDpPrr7
	 duGbvOwKzoi4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690C5C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169893949641.13135.3049771151096631620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591a12f393a45264a6284cfd324c6d5864e6cb46683606a134762833c8fac769
Date: Thu, 02 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698939496
