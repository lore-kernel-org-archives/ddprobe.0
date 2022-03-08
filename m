Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FA12F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646765784;
	h=To:Subject:From:Message-Id:Date;
	bh=wb5zut6nQu9aCQ+6ve7d9dVbNkEN7sl4PFojHfE2oOo=;
	b=kvzovPE4Q9CjOVNSkYT5EGOYimIz6rKv5I/mkXImmURdfTVQD9KDgCz8k7acRlLU
	3+5izraAqYXTquUtTMVa5aP+nIJDnCXqUgnIM7TQ4M38junaeGxb5eYFxpWAFcqHntD
	qeHFkelRQsQNEbxHbqQ8jGDuBJ4w3ToUMYa4lyMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646765784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wb5zut6nQu9aCQ+6ve7d9dVbNkEN7sl4PFojHfE2oOo=;
	b=Hve1gTcHmMDqIFaZWE52tmXrirJ1/aNto7a/5xICxfDYKWhhl/u0/jpe5RnqrV6I
	kjowphzMIsQQaqv1mZPdqVX09ug9Nbr0LISOZ1wJf0OYqMlqKYUWsGWf+eRIFg16DOK
	0UIFM9oOB/asJXZrsFiNbogu09BG2OavXTCk1668=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ae3beb7-20eecb3a-4874-441b-b6e8-925711934f23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97399249a9e8b195640c6e9273d7af6bbee499bf9fcae1782a58fcb5148d9b74
Date: Tue, 8 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646765784
