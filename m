Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1635D7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 07:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644650446;
	h=To:Subject:From:Message-Id:Date;
	bh=x04LeEMDh+PtLyuLR9vo9YIBaOi7Scjy9LpAIOI+/Z8=;
	b=WcBfuCsfxUSwQSUl72PgTrnBieWNfVsomxQ3emOlVS97feJME9njhUVwCH9p4i2a
	2PKxPdFtXXsaP7WqEO6UBh5ZvyAuPmGMvOesz6chPGujkRSR+daTct8GQ6TezOr78L8
	3P9eXzM55KGOUhkwuKMI8mXJTKrasapEuLZbFL+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644650446;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x04LeEMDh+PtLyuLR9vo9YIBaOi7Scjy9LpAIOI+/Z8=;
	b=PFnjGaSDS+4Zr8u1/HT0P7vHHLeqmSBFN1HgWQoAAQ4v/RuPclXA/6+wDeZeTGlG
	VlTQq9odQeuEcdR19laRtKA8s8yigrY7CQG3xFa3mfaNlhdmXTZNlByUvndTnNfroRx
	wjR1z5jxJjS8TdJP1OseQAmf4IcXgxB6WLn2FUCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eecce3e1b-5e423225-f1cc-460c-8557-1059bdace751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 287c60f2de18e260d4e733ee5e3effa728d10cbcdb6020fccea247cb385c8d56
Date: Sat, 12 Feb 2022 07:20:46 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644650446
