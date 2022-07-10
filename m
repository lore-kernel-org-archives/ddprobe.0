Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA717B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657464412;
	h=To:Subject:From:Message-Id:Date;
	bh=rlU24umrFChZH9wZuLDKyY8q7M0JQ9bTPO35C0s9efE=;
	b=FBqnOG5l/Hj5oGfBgzYbbsNCumKFj7M7k1V+ALYQv2ITBRDXAvyQsaIg+q3C7GlK
	3wfMJdr5SbuvpaEE1fbl9rKN/sJAey4UuID5bLVlXlu1897l0sfhIDPrzr/jPFZCjbm
	3LE+FLrmDKqD0BiNXNAQ8iFKY7e5zCrjcdCStpPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657464412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlU24umrFChZH9wZuLDKyY8q7M0JQ9bTPO35C0s9efE=;
	b=QASBiGtDlNXvw1MtjAwXTQoK7a1EX/mEVjJepcQHTDCNHaFv2Y0P/CheRMZAID2P
	HFB2KAWlQPwaAZBxGJpAiqV1PGvsTyahJXKMyaHNE9l6+HcX8QIVBOC1cQI5fKeLdJe
	Lp0a+11gLR2GOhGvGCWLTIQdB0daquqrs534nLdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e893d8a3-902c79d5-0081-4f04-a422-98a4c63e2554-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4845b242838b205d1467cbf48990761eafad168944772e4ede6056e4e03b7019
Date: Sun, 10 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657464412
