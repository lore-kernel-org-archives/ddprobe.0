Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651D6DF5C
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 10:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFA3C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687342988;
	bh=rBsQBru93DdQdJgOUceYd3sjsY2GEtjYcpefDBDFLmo=;
	h=To:Subject:From:Date:From;
	b=NLr0Yp7CarrAemOhHJ/5Ph52XDaxn/UfCn9gIiGpPjcDlo5HuGtg/QVWh7bXcd6TW
	 ns/L77Ew0qayV12F+Hlg1oSBHSAl95kjf2QPgDHLZLc28uRzjotvXQilCP3WckSzfO
	 ImxpYjXMeG4+lXl26Ppv414x38YYgzUReIvcYKSCdaoE0mPJEOseFkMh6dN7GKSo1+
	 zB9fgQtlLvnJuduT6qtAmmapJx0ykT1zAIZMo7tp5uVhIMQvwwaJZMsJlms9m5FaXB
	 onhYVhjRwwPR+LR4IlpRfmb1iO9M+Zjk56RWOZTliATELn6/rWR5kLUS/XvFAxATPl
	 goa3dliLfZfxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59C5EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734298873.29019.1602105725127789970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178d5acc528e0ef098dafe5205d4614938353a057dfe155d4c039a32777d9968
Date: Wed, 21 Jun 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687342988
