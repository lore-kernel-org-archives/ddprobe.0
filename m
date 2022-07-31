Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495FF15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659234652;
	h=To:Subject:From:Message-Id:Date;
	bh=IwKKRz4V/PvKDV0sgjtRX357E8CuQwNsAjCdA6h5tcE=;
	b=WpE5DDE+Uxen7g5mi4nnS5bkiK4+HYOjfckYH8d+49qdS6Uj2A/qxCm+qiPM/ibj
	ejBK1UwBcCk6j7HaN4qxsG9i1wbhPqs4q43utTN6XGAikAsZJSEiH0uS8fwAiQBcIdA
	zdyJqrwUu8EPM93n/22L3hntzOIbfVPuN48jfZWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659234652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IwKKRz4V/PvKDV0sgjtRX357E8CuQwNsAjCdA6h5tcE=;
	b=GAvjgmkq9pSCS6PxXSlN1HYC1JVwk2Do/j4gf/qQ2b9vfdDgu+PuEYWQIh3oX8ZS
	HkMqLhdsQr6ZI8v47c21uGMsrb+af6qdzw9Smw8eDj7J4j2b5+S2kD11pu9LbG+6H+l
	WWx/oZBlTMe5Osm3aV3SLzPPHJUt7dBU7ODl8CCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182521791a2-22f532ed-4a42-418e-9e09-db265cdc0277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: facc53e8bafa08b489c88de6a833230182d581f9412e492f37e3f917357f79fd
Date: Sun, 31 Jul 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659234652
