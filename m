Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818C863E
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 13:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649425618;
	h=To:Subject:From:Message-Id:Date;
	bh=WZBtaSJfoa9m1wz8FunXYXCyfx/va4lrpoMcn0OmRZE=;
	b=f6pRoeXb6U5R7Vz9nIO4ouK366HvJu1upgQkMBu8EhSnSH7JHjYvJ1UoOTnaNsX+
	HHoomfOghM5z94VfzDiZ30liuC3B1sUVr02eVA246LeIfQOghbFudrYEDDMZL5ydmqE
	DBOt7aKkSZc8sAvFMTwWYTS5yhylpBmQ4k83XhQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649425618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WZBtaSJfoa9m1wz8FunXYXCyfx/va4lrpoMcn0OmRZE=;
	b=Xl7Pwqv15J2piMvlH4PUaoTjJ1YgiGKVfYyZ7iIBlMFE7MU5XrlwMPgfQeqXxUtl
	z2aYNT4ZVWHSltye67ea4bVif+Akvqawp0b6UvInsEdW2Nu33BG0RsEUAYCssM1NmIb
	UNGxnvrA90r4op1NZo7N1H4/R2j8P/JaJlCytxrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180096d9597-3ca353e3-3432-492c-9734-053926e1e3ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48263e634d7fd79e5f9f633331d3d1be2f469bfa410088ceb005cd6817585c02
Date: Fri, 8 Apr 2022 13:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649425618
