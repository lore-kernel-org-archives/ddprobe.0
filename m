Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D54362
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645519285;
	h=To:Subject:From:Message-Id:Date;
	bh=sDH8z+loOfF/sEpRNJS4bFkxHVHUqO2Bm+yOTwsevRE=;
	b=buY36eQz1pDrQwq56IcmZs6QjEm23B0akpMaUaz3jQ8sGyXrpPkFH6i3Yak9HJDn
	+o4XfA4kD/QPfjWO29IEU7gpbcwQIfYsLjnGa4oEHsBmopwWjRZvs9godKIqRpWrCM9
	eTdQM8jv6BIR6fpjwfL9f4L8JORN6M7m/2Jwp/Lc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645519285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sDH8z+loOfF/sEpRNJS4bFkxHVHUqO2Bm+yOTwsevRE=;
	b=OwBoqUYDid/KOhAumLOOuBJLRZRvPDvaMSwPJnwO5kSj9Km6RszhaYi5MDYO2bPd
	tgqIGJp9gpHaOuLkM4tBRX6oYZ7DtfuYV1mt8PBx0XX67aCsh6eqb/IPedZkednArQP
	FjseIt04aUI063dB3Kq4g2EDfrBFQS14pU4pp69Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2097aa3a-e4085b4d-0f29-4cb8-8d79-b527b33e7d79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92c57d066ac67770b0ed36e02cb2534802192c638a719a3be41a490e7e320811
Date: Tue, 22 Feb 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645519284
