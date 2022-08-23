Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C20E7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661215252;
	h=To:Subject:From:Message-Id:Date;
	bh=LpbZausmIgpNip6SFtpm+JnApNmDjOMsCdX1/Yx2NOc=;
	b=EKI94ZfmdxBRVkHU2canus5dDLND5rzvhtZANXaL6A+pva/KLlKy84r0Z9AhX7h8
	Sfap19t+4fk2MkUVEUzCfoZLu4liwtjHQQjyRnReBDWFMOtJZlJpL8b/VCIsgxM6hbV
	JQClZk165QcxNFzTN8ewWxSWCV7IVCzJtUJzCH+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661215252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LpbZausmIgpNip6SFtpm+JnApNmDjOMsCdX1/Yx2NOc=;
	b=fXf5tl0zCOdU1dRq4QkNE9RMEtDRmcMH9jp5PyjDJamm3t3AAEFKBLIqoJx/Y5l3
	zQBIbYPDPtm5j/WoingMtLTsSeEaQS0RETnOzL9lIvaXN9kX/1FgsOFrwk9neyr9RQO
	5yqL+vYMCbkaUPHTkuRee621UJEuxa/nbdwGpB/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c825206d-4ba94f0e-60ec-4c8e-9be2-e32004d3d715-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19aaf7997095fe89940477fc2fcdde219d186fa23fa4d9b88909778e43b17669
Date: Tue, 23 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661215252
