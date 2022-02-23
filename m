Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9817A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645658785;
	h=To:Subject:From:Message-Id:Date;
	bh=VtwEMaYYnvpbgHJr4wFAdilyqbWx8EDmeG24jjD/H/c=;
	b=jrjnbKEthgjXrp8LK/PVCYGYeg2jJiNjvFeaVOzUMMzoExBwttG5UGBk/J3/lKcO
	FukZVaKkpFKEjguDJ4Exnio7ScFzrdICBa9yxk5ldlyLDBfCd8Ov0hxBq/nJGqXNXuD
	L3PgAJNtyRazoftuw2eiqW8GTIL/KUlKbU9LWeiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645658785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VtwEMaYYnvpbgHJr4wFAdilyqbWx8EDmeG24jjD/H/c=;
	b=hzkd3y2utbcZrZ2KzOijYiIl5NlVNK5NHQdRZtOsrm6Y77qKOpoa08TcrwnBAkv0
	L07Q5vxhJUV2b9AD4zWk2TEIE2NPnoKB29F+HaWv9rTv42Un0kvVeCO1eR1DB+RWdSX
	DyVggn4AyjrGmVMe/HzejhzQ4AI42EfaxHvO5GRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28e84469-25cafa03-3a0f-4605-b8e6-3a97e7b84044-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7684aa00b20980679e53e945c64f98a0684ac17fec8bf7ec774a4d2a6480c44b
Date: Wed, 23 Feb 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645658784
