Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DB020F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656318412;
	h=To:Subject:From:Message-Id:Date;
	bh=RM3vV6j16U5wej4iqc6cIkNS4Mz9/w4W0ESk6IJv/8Y=;
	b=FfkNfGkPHIvWyBbIXJxu7GVGcslvXBZSDS6mR5UfwbyHJ3eEU4KNnJ+eql7DyadR
	Xp50bwgy9Mol47vJEzcMAlRs0LbU6MRw+CQULTV58RHTtuSBCYWJWzhlJAcpCY3KehO
	wbsAerq9QCpadbDCjluPY23ejiQG9AMV5TffymWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656318412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RM3vV6j16U5wej4iqc6cIkNS4Mz9/w4W0ESk6IJv/8Y=;
	b=Io85jLmwZNdapRqs94yueu1YTHDPNfu0zoAe/xddGeh2EB6Xe7Pw1gKtGToqr/Um
	Srf9JyVDAHod3DMXkDmmCgANsPgr36CkE9/ySlhOOzSP/NXlyK3naUAkuv6vMZudwL2
	RaYCLcgk6THNsu9tFdMsBX3GhYRG5M6xiexJZ5ck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a44545dc-31ddab1f-070c-4397-8d4b-a8f8e1d53c29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f58d4d94b52d042556f9039ba9442310970fa9637f4ee7788e5854c17ef5aa66
Date: Mon, 27 Jun 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656318412
