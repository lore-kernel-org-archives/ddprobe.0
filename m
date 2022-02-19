Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A685583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645302685;
	h=To:Subject:From:Message-Id:Date;
	bh=QBGw4zfl91/Qe/hht119MRcn0a62tLc/dA0n7FqmWzw=;
	b=WSSZxnICXw7i6Zj9n1WhrizSDUsLf4u7LKc89g2sUJIGSXbWZyyBlNbkxDjlRvUM
	I+IU9nz2vFpoe8mrUgYGEKO52bU2XIewRi/YKwqmqNMR23j2dgTZ73Ptst7I7BzC7uI
	uKbl8B7TZ7SPyWXPbogaBRCqYZAO5LXRNBAIPl84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645302685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QBGw4zfl91/Qe/hht119MRcn0a62tLc/dA0n7FqmWzw=;
	b=aoa9jVGNJAd7bfm0AgHoYCRARxBUE4X+S1KLDMlHEt5eGEL0b0HQiAUTxvpaxLNU
	AZNLNhQMrgJC+Sq9TrtJntLYCHqoYejIKdAFfoh3IdU0l27dfFFVCXQDVtclLoCOQ9D
	IZhzn86RTkVQKG6IK2E8d6E5OD9LLysp3AlAhRRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13ae9c97-e95ec98e-26d5-4370-8678-96fb9138f7a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab4fc4f2c68c219ec8402bbff104bd62560acd72651732fb8f81fe188e7c2800
Date: Sat, 19 Feb 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645302684
