Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238FD614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648058485;
	h=To:Subject:From:Message-Id:Date;
	bh=jEcRGnbtxduIHGnzj8C6KEP9sBUAPPwzxWGWSS3pyog=;
	b=loGGMJywOwEePH7cP6z4fj2o47R9t2umvWlMZGEQpTfL5WStZSNKHT8mgLO5l1CP
	jBasMWHdI4681cxs+8L3hOzuQKmhQtQqPxi7rAujGu+7A8++9EsVqZ+tjS9v8NJu0WQ
	02JyLwN6YEfijEPkoqOI7PxXdEBBAGYKpJUjQlf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648058485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jEcRGnbtxduIHGnzj8C6KEP9sBUAPPwzxWGWSS3pyog=;
	b=eeXVbZ/PP4jYfgf5rwXN8TNfiM+8/R0hRI5zZbeVfdfOhy5EmdB6Z7MktYIJ9tL/
	nb+xTq+jjNeEaVF8y2VaK48GsV2v77gAy23eN2a4KriaeBK1DBZu4u+KwJYAXE70rG5
	fkHRmOq+Dk8MhL2KakRTnbzU88sQ+tGGauhWoO0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7f0c856-420de463-c1d2-4323-9f94-84edaab540cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ccaaf0db5c7f2bc8671da9ce099bbc7607bbf2b6cd1d1efe85e87d6bd7a692d
Date: Wed, 23 Mar 2022 18:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648058484
