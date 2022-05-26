Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2341389
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 13:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653572699;
	h=To:Subject:From:Message-Id:Date;
	bh=PUTFEprk7LubCXjE+XfVE9HMEf2NmjDO+jicznL5PlE=;
	b=I/Vzi6erAve/mjJ8v1sIG8PCLuY0KjzIMmApzQuNW9LebSZA0+ARKKOP9FLrGkKj
	Z1ditMoXXHdak571nImLg3ftJzum3S5aZ8rFw8o11Mh6Dsjtt6nF6IJpR3g7KoGurVt
	4adM92iFMmuvGQVIAMMfZsq1VHzS63hXQmgCyJNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653572699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PUTFEprk7LubCXjE+XfVE9HMEf2NmjDO+jicznL5PlE=;
	b=D2JKPxVtVUQ4jJVeybr+sNVo1UTvxTV74fnhapr3lHjzrvXrfPKQ2ysDdrsTlooM
	IGLxzZREZcVyplERLx/1J3hGly/DM9QFmZZZ3pAAKeDI/MV+BF0ZvgFLBBgsBzvkvxL
	OD930u/FXNbwaF94ZuJQ2Cs2eLWjEdgPpFwnwNKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181009d04b6-49ccd21c-9150-445a-a819-31456f9b3252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60b8d10b991811c8da5d555602f32de7daf9cfda8f2128cc2f5aa88427996226
Date: Thu, 26 May 2022 13:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653572699
