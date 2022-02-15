Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555451388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644922884;
	h=To:Subject:From:Message-Id:Date;
	bh=doD78J7ytI1xsZqi3e2ejnbw3l1J+oznJ0DakigrtCY=;
	b=mXgQFIdYmBSeQojZ8eLHNmjEE9sq8Wz6G7GxomYcdFxKJeqeS3eqcTTL5+Hj9qiV
	VpMPZS/yWv1R+4wPZgv0aOUhyB0Hc3zV56oxBY4X42NtcuU3lo8Tyyiex9x5Zy0hIod
	UK73euLCENP8cVN2h8GPIGeIwycggGimgWWd8GRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644922884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=doD78J7ytI1xsZqi3e2ejnbw3l1J+oznJ0DakigrtCY=;
	b=SJGdQvSgpOCFpvobynk7YgAxJ/6E9jg6dkDssRMUsGqauqJ3h4R7pvOXoqpjQiW2
	XdckhJ0x73bSlBagZagLNhE2WPJF/qV/wy/osWYgJuo53rl/zc3jCbT2QhZLcBUiJoD
	Td9Tttd4yd4JLXxPDVjaZfTOTxQT4maQDmXWoka8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd0b5277-b8d67054-3f6a-402a-9856-904581d056e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b29ff70a6992fd93868094a6fa1c2c76c611f8be605323ef3de2b2f09cdcf37
Date: Tue, 15 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644922884
