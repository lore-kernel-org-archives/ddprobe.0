Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F5A23AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646583385;
	h=To:Subject:From:Message-Id:Date;
	bh=8wj0vCMQof02vj88iYSVDVIRkoR8vURu+Jebh/Fe/BY=;
	b=B3kLmQOJtdI5w7cT60Emsc6DRTqqbTOrI6PZVxl9eyyaeZZpr23oPnsg6HT3aF5v
	RU59/Bf+Y3aNz1i9MCf4QzeTXLJjZJ8XqsKEikwTodBQtvXkcpf7Wsm1eVJnhfoj8It
	c/ZuKMzfn2c6imfma9GRrcX2AwB4lDu/tS8e+sp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646583385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8wj0vCMQof02vj88iYSVDVIRkoR8vURu+Jebh/Fe/BY=;
	b=Hf+3NcwZumQ9zPHzMYC/5ZM6M7YS5hZ11JGbMKUNUPkdu9sL+oXAELL7FOpsdDZs
	nV/1h8e1O2TAkHg/lGvHFl1icyns1XrXDv2AyAHX2Hlz6hrZ9E29ADyic0HBDH1Lvy7
	ci2XmHzZp9LpWmrcqiA0+7U9Hhl2lYPYux64gA2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60048afb-2573e48d-cf0e-46d8-9dd5-417d5d8bd71a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e332e8211bca7f5886af4515f6229488152efb3efbcd16fa31f89edfa2f3c43b
Date: Sun, 6 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646583384
