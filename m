Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F79728E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 21:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648243438;
	h=To:Subject:From:Message-Id:Date;
	bh=z6MXT5tc6WDAI7fY5Lfw6UT50RuhUv1en/Z/7lvbRLk=;
	b=mSUbkyH4KD2RLsIHOc2i4nUm53bxaAKKiGQJ93ZDfk38yXghC6q2O0wvlRCfx/YO
	hu8VVBGY7igtg1AyiB21Zybh3MpGn+uKL/07lLt3b7phBF83cUEZg1Al6fLf5el/U7a
	XDsB8VbnthNz0FuMmw+P3/Mt60QEc68h7R3IbBi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648243438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z6MXT5tc6WDAI7fY5Lfw6UT50RuhUv1en/Z/7lvbRLk=;
	b=FnEisZzWPp58U9G+XRXBR98OgBQk2b2NB4luaoJrhfRJTNIR+0JQVwgw6c/x9jF/
	c7BjlOfEPZd52VaBYQZflrPRpCUheOedqGkdhIXubhSjr1/FECcGJwnm+2a8ZwTl86Y
	fbix7TmKarZiGsW21wE4SxFrouBqa9wQYsvDWMQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc2f6f2fd-35d205a7-2c97-4102-8736-5b1d151bd8f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 550b78ddb5f135f43507f44c464a5acbd52eec37e5c691927c205b2da68b9a7e
Date: Fri, 25 Mar 2022 21:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648243438
