Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FFE38C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645054285;
	h=To:Subject:From:Message-Id:Date;
	bh=12/mOhQNZILe+HEF7m0FwwNvcepNLpdFQqs3kJY2/lg=;
	b=MDGcdgCw0KXOpv6Pa0jcNrajYeP2+WNq+RpEEVTH7HSvXacynMO6mDJtuhkRRBJ/
	ted/mGjzpEzmwKj93MwKZJZgm/WLxrxHTRyrCdQmgb8Pij9pKoj3jUCPrZ8HP73v39d
	DvreWVwmc24ABBYE4q5fAREDyS1P/2FSMCsdHZ7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645054285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=12/mOhQNZILe+HEF7m0FwwNvcepNLpdFQqs3kJY2/lg=;
	b=c4FTIIr5M9Jo1F8DVByo+zETqbuVR+ZuFiblnalC7pRKolrtn11SzoqgJFjV2XMz
	ycCZBLhaRsAC7KwGRsKsm9+PqDwzggsa3AAhQ6saE8iD3W0fnKePBC7lrCIUnMxHI6p
	rZWZjLHyPYIASBIcnmVD2AH7InmjjHNirXyjk4tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04e053eb-640e20e5-fe68-4344-8986-e8a6cdd37f82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4f5fc0f4c8d34a7aa450dc2a71f5da527adaddd8fa26f5246305c2211178d73
Date: Wed, 16 Feb 2022 23:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645054284
