Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545CA7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657361212;
	h=To:Subject:From:Message-Id:Date;
	bh=R3+IYgrqDfOZDRYXe0m0Ii8oLSwrvYZjYMULbvaM7PM=;
	b=XtaV7HcUYv9HCXCDNquMdtzQxqSwOYpP/ApC5gbR0tOApySZPFhdgekCv8NBIMXe
	MZ/3Ps+XB2R22TdSqzoqtM/FlGMQgdw0bl/hZXrJKmxWrsgOEXJLpSarkR2BKctTsGk
	IwOPRPnZQzNkGEjWMhPV19/uYr78E8Kt/UICTWkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657361212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R3+IYgrqDfOZDRYXe0m0Ii8oLSwrvYZjYMULbvaM7PM=;
	b=W/Cbh3RxuNpa+bfoTOufByKQzTHe9qshuw8IaJBqJtIwipJFsABD/xmynEM+qf0L
	S5z23fXTkucgXPvTY7M2JkGCPoSdv61JzE+910DHtx/fNlW7KxppSDyQlZOvinTeLZ6
	hF43eYalxMPbyYP68awQ4eAJ3gOq7/2CSMPR4DSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e26d23d1-a41fe8ef-07a0-4c8c-85d5-a2869f7bd74f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 542dc134d8827ccc5405fa81fedc7a8fea5965162bc1aa4c6dee18f955589ea8
Date: Sat, 9 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657361212
