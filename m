Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324497A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659984052;
	h=To:Subject:From:Message-Id:Date;
	bh=yxEk4ZJRFhnykKpzvQm+6ipbAzjQV/HTTseV3uC8dZA=;
	b=dqmNsrms8c2aetdpLggi4603IwR2RBeFP4ZEMO9T9nJ9Fb7g2XzrXkGa+5pQUG9Y
	FHYh4I/2rzK95Y17CEzYr9fkz5PuDeOKM8h1fM6iDvs+yzOhfnRePGVeyghBp8NYBXN
	3ZOM1jpSLPvy74hgyVi21l7CFfbpIhJaodrcpWG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659984052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yxEk4ZJRFhnykKpzvQm+6ipbAzjQV/HTTseV3uC8dZA=;
	b=gzHnPOr0zYWEFF1oACNredR2FMZPU2/ngDUdTwnsYQ89ptXDN998F21pJHwBgf2m
	2v4JTaH7UMYY6Vof67EYS0uYXsclUx07YNePyEgvaYeuQGjroZ+kIW6Cebafv2rxCkv
	6d7shCnxrqqze1sZrmO1KHvWuGYQvVkBM8VJzixQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ec28136-3897421a-30a0-4afa-8e43-a73b4f1cf005-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc6c73e569f30c4b2d94df76f5cecc11a094dbb05b6593e9ad094da0073e8547
Date: Mon, 8 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659984052
