Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A0F4C80
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646844684;
	h=To:Subject:From:Message-Id:Date;
	bh=xSINLwHgnUqNNTPmuCgLuWfEdRRftsJhgkwKFVlZReY=;
	b=SoAgFYpZIMm4I5L5fgadFPWJ0MbEgadpKZm45lYS7D3/Epvn6U35v898CHhk4a3O
	7I+gK23wgZ0tSkmuGtCSTu8hGupENcHgs6KT8HbJRcyUvE4zS7kxtvG3oM/XJSAr0Xz
	AIogNaLtxyg5hWNVY+OqVdrZl7dO55oH533Wc1SM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646844684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xSINLwHgnUqNNTPmuCgLuWfEdRRftsJhgkwKFVlZReY=;
	b=d9oTLNRbqtZFLsGs7YoQpOfbqJq7Cbk25fxs/Q4udX1A3w2EKR4cXCN9HORddSk/
	xxSUrCuEErT2pxJUay7Q11rnzvAORn2lqwEGSOFHuZCq3nqmPEBJ5AhZ961eCS/Qe0r
	7qv892hA2sJO50DubV17lfQ5LGsE1jwZgHBIOof4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f97a9cc-b33bf9d5-70c5-4108-bd8d-f4f1a0dd3cfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 414886e43c9684e6ccce640e1c52f0c4704e04f90e84bea23c2df214b3c4388a
Date: Wed, 9 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646844684
