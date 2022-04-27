Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8DF7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 09:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651050778;
	h=To:Subject:From:Message-Id:Date;
	bh=KPoR3xIGGOIwioiHPuYs3hbNFYRphDKEsyQOSwlzSz8=;
	b=Po+NaWU953yNbpfg2gnGe4QZp7PwmTy7j8mQDFweas4eYwdikSO1hrNI1tWHyZde
	siJEMUbOuJVsUtzNUIK6e09EMI7uhxgNlPE4NXB4G2ZiOzCXKVcSCsd2MbDVtzuC2cl
	D5Fj663aTNCrFjb/qhKTome8D8okgcNrN9fCcMTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651050778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KPoR3xIGGOIwioiHPuYs3hbNFYRphDKEsyQOSwlzSz8=;
	b=IERATTc7xXlt4smcTVY+Y9/UeepEB0x7XUuBpaCy5RhpGpCIWYuXu1RjVkhUjby9
	6/P6tHKrspfGmlg6i0kReNbJPmXhFH4HJh3cRulNC274zu1AaZdZlhLy4+nbnhFcoGb
	qacRMx7a7LeMCZADzqkTtQagQhewgj1pOFGR6dCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a4b8e8f-15770797-644d-44e1-93c1-77f571d09e2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89310a44507ab8389ea21e9b86373c17a61bd6f1f951b0ceee5e7081d753cd1b
Date: Wed, 27 Apr 2022 09:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651050778
