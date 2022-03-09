Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE4515BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646811985;
	h=To:Subject:From:Message-Id:Date;
	bh=PPGW6Dmor/dZA/cz9fFJJgr9FZTxk2ayLo7eRLDoIyI=;
	b=Ky/g4HdEbZYqi6MA3mhxlhMv0jgWoeJUb6WJddCl+tApXjY/wcQd6FG7WYlca4n0
	s5ORZ6PpQl5nMWEFfnH4zor2ubSbdSbRCvjoR/nO0ULwHLCfM92Y3Pe7fAFk9JyhBkf
	3PHQv6YGS2s7h/xrAn0Z59rV+/bE5+FxR3e64B2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646811985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PPGW6Dmor/dZA/cz9fFJJgr9FZTxk2ayLo7eRLDoIyI=;
	b=CUnrR0iDwN9z5xD7hE9iacha0sTcKbIAO3T4zbrgZh1r2LIFF32489TjB5Z9InMS
	wOJoWru3+oXhdj9RZ05IyIcvGVRZg9YZK/WluehfixjqZHLfvnNQvN5DvyJaylpMrb2
	Kkaj1NZ6cTFoB57gNa40ln+l6xk2FyLeZPj9gejA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6da4b3af-00e1d969-9e3c-4f1f-b508-43c8539ba277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12ec0c2b24210165509b458b1b71a14f9c92d70a71d764965305dfe7208caa32
Date: Wed, 9 Mar 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646811984
