Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688347C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644898884;
	h=To:Subject:From:Message-Id:Date;
	bh=xZ6FQx6ZxwhPzOAHOL1wSarSnccS89/aCBLKiyhc2xc=;
	b=gYYx9HNEh9YqigVzAWuN/FTxIi7e0jt8PDtb1aLXetj7DC0b7yBv0/OWffT8S97F
	NIXavB7NLk3ovAtugBNm1Zsvdp0P9iX939Kd7TFENQiJx+/osgiDWfDyP8FIg0IDDSb
	lOnHp3w5YDYFzsAEEBCMvnfp4whwa/dAcHewHrrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644898884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xZ6FQx6ZxwhPzOAHOL1wSarSnccS89/aCBLKiyhc2xc=;
	b=BhIf2+ik/c4HSy/Urp3lKfKwtv4qSax9EOOmXeiZBJUzTmu3g5pdtgS9J+LvVWCJ
	z21UdRBcfFIhYP04TTGA5ALpXUZ3fCAOj22Jt20XFRB6/v7IQG8MR0UMYAsHzvlTCYO
	CKIV43WqdnWpZJjl2/5yKOfvemgRgikFEoQwAGRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb9d1cb7-f2da8615-7121-4db9-8495-3e8e57bf56cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb3a0dcead8b4a1076b65968624693eb575f842fc0c0d7eb190033abaa9aac99
Date: Tue, 15 Feb 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644898884
