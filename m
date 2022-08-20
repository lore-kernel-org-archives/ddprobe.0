Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D1A198
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661013052;
	h=To:Subject:From:Message-Id:Date;
	bh=c7exUlqtQ9Jh9mSfktYepoxv2PApLCSsJfUGS5Gx67c=;
	b=YmtHe2fcz//V0cjA++ukxT1PWLteULwCxt8hseDu/UKvQxvbaZiBSHHsjO+0NdI+
	SstvUckRjbjXXP6abiR2cludFP/+QJOUM1kKebtaZYqq8ryVQXNhjj5m0gg1BK9lVBd
	F0DaEqvAKNAkBeXn4fj8kbGjaYVMDeqnZzuxt0u4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661013052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7exUlqtQ9Jh9mSfktYepoxv2PApLCSsJfUGS5Gx67c=;
	b=fU1G81Yk7I1d/TB5ZTDBXbp7cIJulGrPhEpPOiGkY87vLdO/qk+4bA/TM7U9jcpk
	Y95wEflaNgyC3nn8dtJYRDy+HXsnzKQwTauT6aVWAWX9eAgfHOkdFHbFUy6znKniJiX
	ItwB3k+DquH0hO2jidiDX1+h/2uCbM8toD6GqsOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc17ccbb-80493e59-fc8e-4660-a1b0-c751ff9ebefa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8beba0258b830ff217f309146e3334736e6cccceaad8e564211f4518c15ba57a
Date: Sat, 20 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661013052
