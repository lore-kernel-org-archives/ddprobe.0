Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A4D806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 10:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652611319;
	h=To:Subject:From:Message-Id:Date;
	bh=4d8chL8OszJGBqhtTKMO10bazDV1tCNuYXJ4awikRAw=;
	b=itrcQhmx8mq7JbdLfMpyYwThktzgnGrmhkOGmdkaMCT1+BLDjMS/n0C2PR6JKrLP
	2lDetCycRkT8iXgYGxjOts94Eq/kIWx2SgMGtDZvs4M1yUPcV7igqS5ndvw4WuTSgPA
	p6LXwIK01W45/9h28+AtlQjWUOSWoMQHrtO05svo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652611319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4d8chL8OszJGBqhtTKMO10bazDV1tCNuYXJ4awikRAw=;
	b=FlQqDYuJ2nUB8sJSbwlkb+yeDG/ibFZkU4wmqfaTYqf4BJzGEgqUHJodXh45iEQx
	LOwPLnRV18yxfu6tfhhMK3T+xSfHAmnCAIjDqfwI2M3fDfagQGx8leYrjBbJhT/PmLd
	8ZRdD8zA2fvNJAr3JEsEbAZwl/++/ECmwUfLuU6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c74f85bb-b0ddfc98-80a0-4453-a6dd-e1a86e3e7423-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05ab1c15ffd132a922b2be7d88577f72b341728801119924f71c1cd0cd31d42a
Date: Sun, 15 May 2022 10:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652611319
