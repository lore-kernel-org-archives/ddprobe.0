Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93844623
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651752299;
	h=To:Subject:From:Message-Id:Date;
	bh=1/lokz2FdLO2tv1u65NOkAll9agN7ZQJX04y6O/WRbA=;
	b=jDk5alPaUV5fLlx9+1h5zGeVKE4T8M281Hrb75YNNiI+2+Lrbze5pDfurdoZOOxT
	8mbgYyqoQ+dRjuQwGi3IFeXcUxq8g1OeM/UYClyA6O2NRNYKiNnJx14A3iE2rpTlS8h
	2uA6EY0t9sgVK9FExPegP3ZT1rZJwhSjepF6UMfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651752299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1/lokz2FdLO2tv1u65NOkAll9agN7ZQJX04y6O/WRbA=;
	b=QwjtYX+NaDptsuWEXRsQ39jNUPkNp2wkHrVqnRn0L8A+1A+j9KcTiGIlMnwqW1m7
	+/BLYTd5PZJmeGiS3btdd0J+vCBW3JabKab9JJtA5rPFnQeaBB5/Jfo0hM103R2PQ4d
	ldohjZpomNfB3T1QvcNBahk5F1FIuMmq4hDnW11w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180941be746-96a42181-2453-4629-822c-69c4016ea13c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27d3b1e354e33425ac82873714037e7b9481cdb4fbcf9784fc6f7cfab1d0b1e0
Date: Thu, 5 May 2022 12:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651752298
