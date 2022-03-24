Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043051B93
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 09:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648115158;
	h=To:Subject:From:Message-Id:Date;
	bh=aq7jazG7ND51iY/RBL1+TC5eKqxqSnkLiA0BZxBJzYU=;
	b=W08Lu+leRWRsv8aXC/P4tVeIQN2v87vnSLNpQ2Ta3zDu0TB5hSRH5ktQhYN66wSw
	ku5e2E2yaj9Eb7mbxi8SGRkJJgUT4IynuEbnTLO+0QcaBlCID9lkqSkviJFS3GoNEbq
	V0XQS8zmVkQYROFBmwHgBkJgHOzJSmJJ9Z3ap0qA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648115158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aq7jazG7ND51iY/RBL1+TC5eKqxqSnkLiA0BZxBJzYU=;
	b=MkmARaAFYKrAZVAQNCcHJe46x998euZa6ua2HRkexLoZ/U4c9Vb/aV+k3l97SMZB
	ygDm6S2OJAKLQEUl3k0kVUNb0NE+kKxnnPX3hZvjtQ3AORbc2kJqGpiB6EVdVr675XL
	2xH2e0iMGVUHen1PCIOrub+NR8a5zpayZDEIYPEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb518cde-fefcaa73-0422-41c7-ab01-e12d15ee353a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e3142dd83fc9d92294ce60d491d31c68858e830ac4920959d20e40e2eea45bb
Date: Thu, 24 Mar 2022 09:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648115158
