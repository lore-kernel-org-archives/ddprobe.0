Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9996C136C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646457684;
	h=To:Subject:From:Message-Id:Date;
	bh=F0+TfNAWDwUplgdC+c8ECL2/7EEofCBJXuhZqUo1SMY=;
	b=PiLfcSbd1l24hKuuvyXs4vt5BBnh72CRjIaDru6VS/DCmGrn2XnRP807OEL5HY/k
	b/3/rnUjKUvmMewR8TToYAGXUOv3hWzPwn4dKsdgZCeQ+bYHRrOQmTPganLwLvReviE
	XUV7IgDrF4GnZHAqcjH1k1eyun+Tg/eTSkR++ej8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646457684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F0+TfNAWDwUplgdC+c8ECL2/7EEofCBJXuhZqUo1SMY=;
	b=fZmg8mFWeICBbArGsrcUQZGIL40X+LL5v7KGWAIOySeGSKEfAc4lUJHgLXWewbZp
	KxGpqn0n1vrPVKNeV7jwi1dxTOQ5RxVbej7E4JI2WMX0KTaKPbklMsc8VcmznV43ccs
	GlAuuvyE5nbOUn/OabvB5U2PmXsFLjAp72lY/kpE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58868343-44fc24fb-1d55-434c-b19f-fc48d068b669-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9902d99dc0dea143e6a793f31c9477d6f15a3245e29ed7a64f4d0a4c5199f59
Date: Sat, 5 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646457684
