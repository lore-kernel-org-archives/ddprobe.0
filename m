Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C9E7E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 12:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646827285;
	h=To:Subject:From:Message-Id:Date;
	bh=rsgnLIu2YUNCd2VO3qGvna0kZHzIQAqTN7U00ALZ+gU=;
	b=TTajYd6Cj8dKmyvRoZNeoEFgN16myqYomrfectjGEP3zKJlD2KiZAuiIwi//UxHj
	EOPwKr063ardQ2qyvFG8pfjkmdhJoz1pKWlXBJkNBkSK+oV/jWuqnJ5qg3wLhb+dURr
	sGiL7KJPiY9p4IK9MfAWsLlCo9Ygd7jv9RGxitZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646827285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rsgnLIu2YUNCd2VO3qGvna0kZHzIQAqTN7U00ALZ+gU=;
	b=IXfFwtw0gonzBKVU+mlB4FAxamOpTwSN2AqYFjH+s+texLuC9q0Gs38SWK1KRIEI
	moeJPnRn0mDAIO3Y9NEvbxF87P2MjWu9H1QD5N65lZof2Qq8IETDDfe19yKXPRADs7n
	OAYqXH0FsX/MUrF1PdrYVtP5y7UFXJ7NAw5Xl26w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e8e2949-3b13d933-eec6-47a3-ae73-e85c6712d82f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3616e9d5aa995e358529479708edb668a165b71f76b0cb4ba36c4edba109edc
Date: Wed, 9 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646827284
