Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4AB10F8
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657457812;
	h=To:Subject:From:Message-Id:Date;
	bh=G6cML28U+1aJ63BegKLgzpMhXqV6ElaEPSWXD/HFOko=;
	b=XCGnQrFqFc4UZWkSnmxx/oJxTogRpzSBtDfyyvzbiYQMsbhbh5f8v3fZ7kp8Kf/M
	iZMC5PjXq3E9oRZV8/DPGoYP5yQeo4SYSV5vvWht1ypth1miZZbnfdtH+ndfWYurSYj
	384tDKREs2AC4Xcv5c9Wq/gxMW5Ne2e1XzUG1Frs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657457812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G6cML28U+1aJ63BegKLgzpMhXqV6ElaEPSWXD/HFOko=;
	b=ee/uNK3yiQQ4AQXcgoRFeFk3kp0Bw83iBxZrfLRr7S+33ssO4P/P+KgJSAvqYdBr
	/usEbIiyyJjQkvlvbpd7asgWK/qMBN+YJ19tElnMjUqGYjdtvZp0hQUV98VP7jjaHjw
	anecyRG0TsIIpZ4jyyjLK/ukYVTdjZuw1I1plUps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e82f2360-bd2abc4d-518b-4217-acd6-2216f919d455-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7749d507f4bf4cbd97631274a6e07f34474db90abcb3188d78238b0c1c3f1d05
Date: Sun, 10 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657457812
