Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1017E7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 10:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650710638;
	h=To:Subject:From:Message-Id:Date;
	bh=ZR2lGhAsR4CLSh03swN9IKvgXBGvf6bKZjGjG3sAoYc=;
	b=Z+BsLTCtzh5voWi3E7pFD/zryOUFdcG+zfUITq8XGWuslSBPF9JZH2D+rxvHLn9i
	+cSCRVRCeBxwrDGQF4YKm1bcX35sC/mT1mLRKph5vc3ZOZ/ptSEcsbsEtpaFrR8a3bD
	QQEl+FNCpG/rUTEmH89ePIaPM64y7NW/Jskv5Mtw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650710638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZR2lGhAsR4CLSh03swN9IKvgXBGvf6bKZjGjG3sAoYc=;
	b=Kdk4gkHebZZvRL6Z2S2ftbGlymHuia2gVjgnbLyVEKlF4g6CuCo39jgNzjTFMhU/
	sCMciwNZq5KRkDLuHpUcqD8MQyV9PE74yFybIEARQ9fJHz49tn0rKih87DeBXKt8ibR
	qYF/7Uu/TAERpAZspPtiKdiwUlyXaICY+Q9jEDLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056056eb8-8d56c051-6506-4600-b7df-00a761328f1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aabb4998535c2c81dbd7ed5265c61d0e1528e2999281c7343dda1a4b246a447d
Date: Sat, 23 Apr 2022 10:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650710638
