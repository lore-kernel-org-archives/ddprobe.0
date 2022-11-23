Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D134699
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69192C433B5
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669227054;
	bh=QvK1Bd8EqQODarzKLU9mY6WFk8QEvKbe9Azkqqs35hU=;
	h=To:Subject:From:Date:From;
	b=R5i0v1PBae8eG9yQwVNkmErkCLxxQhY0m4im7WTB/Orvkb6EU2z75GMf3ivl4crSh
	 pE0JCZEtd3kAviE7mp1plmBiyIN5nmXQQqXVpCVEtZ/5t3b59/Ws/1LtE8QXcRx06i
	 aY9dNNikZUby9JCbL1w76itRIaYoJahsfvG1jLBsUBjwlU6Jd2TBWeM47ouiIEb/8h
	 48uxKIDmkK268sL5M8lCoqxtkc/vfrXzTfLaS0ulb/xqT8v5YYXY8IinPwt/vacuyh
	 dkGQoeRn7amToI2NLaKzA3W1DXNhPRVtH1ZT/tgSjWf40lkMersGDU/dkjr+p8JIlC
	 g4KG2mSqqMu3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522E5C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166922705432.13112.5829526195429461542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc2013eac0e34d91e0248011c0457b33fd617f11a4ef4f139e187dfbc866b7f
Date: Wed, 23 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669227054
