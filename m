Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C0E7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645962384;
	h=To:Subject:From:Message-Id:Date;
	bh=2F4kBWdOhDA+WgHLuQ4FcubuqGsKnY1BuAD35Ai3+jQ=;
	b=Y1sbVTMNkATUFMP8l8dSYj12hm+MvDhB4hAomQj2r/hV0ibMFlpx8gUrjecYKQT8
	Za9/wJd98XNCE5R5fH4RJk0nAnvoCRWFPcifcYb2+rPBkE0hSgNZOP1VWabO6qr+1l7
	O5ZwxvRq2Ntm3f2j36ZGH4DjRFsnz2toSVSnPekQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645962384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2F4kBWdOhDA+WgHLuQ4FcubuqGsKnY1BuAD35Ai3+jQ=;
	b=Egf32xrJ80meyOyRuv4TWoOg8P02FgGJOsPIqruSaytCh8ptv5IocH4eAqPrJvCb
	0Z8WyQI67PL90VCVeyzoSF9xpzAbU7FKX2E51sMjUhQq/l1NTnMKgDEdT6neXni58eu
	Ob6Gt3kp1tEMGqBefFo9qpv6cmvYsPoRahEWM26w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b00d588-d90afca9-a6d9-4a30-993e-7f157ea74002-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 530bbd829d720775e6241ea223137cbe5464fef675817c9bede817b914336163
Date: Sun, 27 Feb 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645962384
