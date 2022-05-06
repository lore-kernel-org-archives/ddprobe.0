Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366DF7E2
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 06:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651817038;
	h=To:Subject:From:Message-Id:Date;
	bh=0vAPFSaA8kq0YbEmkoPU5Js7Cy1nubF1BukP9ECT9gI=;
	b=lZVC/X0mAYk9DnFQoZhFlaY5KVtpbBFQG0qnkVUcfByBFTia2mUg2CoweSuYGDu4
	aSYlzCt1OBl9IQjIk9avvv4Omzhfko5bmSaJVGhnvlq0CXdYxEih9jyAHlgGYzm2Snc
	+pdwJggbRdAadovO01GEqdI1QxFoKcrofZKU5ivU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651817038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0vAPFSaA8kq0YbEmkoPU5Js7Cy1nubF1BukP9ECT9gI=;
	b=gegFCK5/jeGN2c1wV9BFUMVGQj/ZI08d/vhyVGIab56feksC5eJfGMB/03p7Cjhw
	So/O7XgoRiJKgDGt4F2HCAZrlVw9sdFfXA2b0RfUtyHAz5QkjWD6FlzTHkUgbnnK6HZ
	SkWRd7P6UpRPw9NpudxtY6+LZJIgp5gCGsKvDA90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097f7c1f6-b53f6f2b-8cb3-40de-9838-a3b6ed67f462-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06c439c6856047659b06a4068ceaec4c2d90bbc35b749f66781ae473def9301a
Date: Fri, 6 May 2022 06:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651817038
