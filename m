Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900EC7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646838685;
	h=To:Subject:From:Message-Id:Date;
	bh=3OnKMjm7yOmBmAfWU3BTWNjW4EL9/kgWQykYCm0yhEU=;
	b=inEL+41h1/GDHZJ5MR0Nw7auk1mWRoeKvS9pLMWwJqytwdIMRKHd6LJegQZV2SJ6
	1BRrxGQ2iDwD2r5xCtWrhAsouK8jxI2TBMJDu8xHw2gJb9yuUm7F1yJ8N1jJCy7La9H
	GpYO6c0VOMuCD7Z2xHn+xv9ImqAwOAdNSVEt6C38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646838685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3OnKMjm7yOmBmAfWU3BTWNjW4EL9/kgWQykYCm0yhEU=;
	b=hxbSouZV+d3jSigTiDQ1/qLGWh4V3nLRuBji0v4x7VokIVpzmyD9rpPfV24VCJmL
	2gapm354pb6UWCeSNI5opJqhWOhvweoedHRG49pzvafkZgUVLQp89Ik5abVxOmW2Q1Y
	05bYhP6ksZcH6OQqyRkKFmuPsazG5WVjjwwEaLYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f3c1c67-156e6f57-6a75-4b59-be32-c9f7f3e93556-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eb19f2c9c970ba1ce332b03ddae6a3300ddf916936feb3118cab82933fa8d66
Date: Wed, 9 Mar 2022 15:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646838684
