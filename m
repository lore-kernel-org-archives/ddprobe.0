Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0992223A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 05:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654492919;
	h=To:Subject:From:Message-Id:Date;
	bh=kJJQLRU2T7v1THBdM6dqGvAxI1Fkd2hbQMfZgGA3BlM=;
	b=P/nwNWkv3mbJY9drGQdFf8og3hX5zrStI070AcoaEeV2KBt1/19amffMQj6wFxsK
	ZNGrMia7U1LsHgQdFOoGZBOsOYAwX3L5dOvVOPHeFsGkGLg2wSbobVwfIN36HIkJbMy
	nuOQzR/IpyjiMgj3ootz+Gef9twrbIwFHMU6bLAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654492919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kJJQLRU2T7v1THBdM6dqGvAxI1Fkd2hbQMfZgGA3BlM=;
	b=GsZkcA7BIbiskQwjftOuQFzDZjv5iCc9kzgFcezSktu04USngxfxZg7YcjV9CQ2a
	hUOtU55VcVpBe9R7t4ezpJwC8mHaWtqWp1pmZ6TbRT4Q7csqPXP5vsjG94AWP2QT+3I
	+exdHlu4pOjMkpojR86bvdP8lpVsPVE27zk8fjpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137767600-2152b73c-db87-413f-962e-8d5ea3c2b7d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bf6769c09b3424d8b9cbaf893848be90bbdcbe08b06ded941024951eeea26a4
Date: Mon, 6 Jun 2022 05:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654492919
