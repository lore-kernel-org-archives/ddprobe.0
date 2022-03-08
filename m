Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FF448BE
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646741485;
	h=To:Subject:From:Message-Id:Date;
	bh=UGFqpUQJcIJeVAl9nSex0f1YfhptKsYJc1DqwF6/VMk=;
	b=Itnj8v/mn1oHMgDoh5JQxcpGZWL9hEVLEM24wFrDkHoNygaVa3+/9xanqqDOy2hG
	YH544KuGza+4ffke+LUNeIlJ7KlqJ4IGG3SbbZ0RhWtV2+VkV4FFSdSeO44WsLDrR1o
	cXeUmxLB6fHxqsiDJMvb+EOrXIRClaguowJJLZgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646741485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UGFqpUQJcIJeVAl9nSex0f1YfhptKsYJc1DqwF6/VMk=;
	b=dQN9ewVt5MNUv5ubxNjQ0JZZr8ii4/+1wUfaN/gMfsOH2GEtV/CJjvXhbwjR4+Vo
	983MgLAoVFBIT56rD7KMrhLoe55n7ZAD6YajA/Tr+Uxa5qcZusQQX/tV3oOUox0oWLE
	+MxI3VHzDXILMtT0Pa8qlIjLNB37U/RYefHaWXNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6970f4b1-09a6f140-90ec-4a70-abcc-a506a19a846a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70bf625512901f94686d8a6fd04b336f35a953972470a32aea5cf1f05141a4aa
Date: Tue, 8 Mar 2022 12:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646741484
