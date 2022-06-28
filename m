Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBCB7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656445612;
	h=To:Subject:From:Message-Id:Date;
	bh=l2PrmPm1qDdkjE4O4KJZF20lnMSxUIcBSN8M703FBBU=;
	b=KaY71ZP+Z+9XzyRsDuRk63HOVbi0jK/kEufFv+lciLV73mJjDM4AvYjnK7TFAw2F
	4MqcffalFSdAarU4Xxt3mtnSGYWXSJRqBj0BnROaGyLvDL8AuUqmO8cSdZoE7Gprj3y
	/EHAx3KO8WgNSrvqkqjFug0LKUIj8HSLEFEkAI8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656445612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l2PrmPm1qDdkjE4O4KJZF20lnMSxUIcBSN8M703FBBU=;
	b=BOHWHB3H+s46JQyGzYQbvFQ8kd2Ti5cUOa7jzCcUisHENcsYknEIPVx46QxFOsoG
	fDuEnxP5yY0F1S4g4aF3SOBN2r3W9ExyOEdXACbPNhkXcOntuLqVWkj/UvM7W382pyr
	CPUI+fZavbZojaOBb0evBe80tUGPdxxcqop4ekvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abda316f-efc70923-abc9-4920-b23d-e8d0b8f6a762-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4aa7142c15d27738b345b7fb972524e8069b10694ca404a2996c1eb9441a9aa1
Date: Tue, 28 Jun 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656445612
