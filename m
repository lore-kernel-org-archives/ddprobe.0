Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2DA621
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661134252;
	h=To:Subject:From:Message-Id:Date;
	bh=6ihCnQ0dOMjHwYwf5T5Q8t9TXy7qU3+TxE2VzFh1+aU=;
	b=XUnMNd1YQkgHe6jVOVieSwhyZSL7rRLwFvx0tsgce3+ibicVtbLkgLbTTYiOuPcv
	LvV22TgIBHf2Syg2ySRMOwS6n7ZkIidcMTtuSrhImWMuFIOQ6Q6u8VTyvfT+wHnJ0+Y
	/9TzDtih28itjqez535WeYXlzJIMekQPbsfaA9cI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661134252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ihCnQ0dOMjHwYwf5T5Q8t9TXy7qU3+TxE2VzFh1+aU=;
	b=QS668/vd0bMW5REZvBlpVezmuc02vRNGmXPWg0xG96uq95Z3HIO+MI1JYpa2YXIY
	dI0oAMqqXBzDl4V7kVM4pfW/Dsj81Lzd6+laozA+YK8wtJY0nbYs5LTW3YNhm4c2jHX
	CuzRhNYxkwafFqE0TS6KIlV1TpixpU3j3SP/eKjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3512a01-a6da4069-1e3c-402d-a41c-7e895c071e60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 708c200eb4fdffed54223a95a78c9f685bf58126449e27674a7d2133d160d72e
Date: Mon, 22 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661134252
