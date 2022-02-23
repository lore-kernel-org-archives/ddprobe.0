Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFC5800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645592784;
	h=To:Subject:From:Message-Id:Date;
	bh=Yy4qfldvn3rVWqXlSrf97pQWyYfxAxqeCncAWpGh3qk=;
	b=iJPYEeo7W3f44YXpq3VV5gqn7sgXQEmtr/LG5LMbGXt3vXAS+lFULrNvtwlqfNlm
	6zoKFQGVJzEFSxtqZRO7Po+lDvRqFfaJMAHJ/zd/YF59hc4g0gxj2IUnFq2Bvwt12U4
	Z4w93pfDnUJZDp3K6O4OGw8vM06dIwC1VUrjt1i8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645592784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yy4qfldvn3rVWqXlSrf97pQWyYfxAxqeCncAWpGh3qk=;
	b=d15z9qX7TQLTXjighptAw9BRqcqBWwMtBTb9apJ+sV2QmSF4wQa0p8Q2IG2mZXVG
	UXsHa70xxn0flZ3+v2ztybaFpqU9O0B3FnYtRSlSf/eR5+XtetB4RtRdvApq3mG0f+m
	wkks1ppvRWqIx60fsNC+v8/AmlD1/2WcqcN6FC9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24f92f99-74a7b264-77cb-4c77-921a-ff9972604ba7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 889d509e30a50d78e11a09c49c34f73be755b61b594d727685b9d05678c34328
Date: Wed, 23 Feb 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645592784
