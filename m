Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB1A23A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657610812;
	h=To:Subject:From:Message-Id:Date;
	bh=kQfuY1BL5b1rOFAOURkePZndW04D82KUoK3EemZ0XcA=;
	b=dT7K/4GURPv5GSN4m4EGcm0L3F27PqTBzoUPYO0ITmZbvSCfxYOZ9eNYrdvGBJ6F
	Om6ZS4QU3DY6lhNeETEoLUPQQfJYArGNQD/j1VxszGS465uXsSGYHR/m1r2Krq937es
	8D/7smh0PCNNyeQkeEmV8ZKZiecf2GXwqAxKyp+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657610812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kQfuY1BL5b1rOFAOURkePZndW04D82KUoK3EemZ0XcA=;
	b=VvhPQ9Bzwi2wX2iqJixjnUb9OLblkQN8ieMOa9ep7BIiWe/c0hAPsKqOmE8VuWrK
	JZ27+gDpj+j7AGFBgGseFUPBNemzVmBF5GxbVg8/Eze5XeA6n3tAZ64qX0RPtTmhJzM
	q5Ld7YUqZCyzaKrJjuY3GsnkcKKcsjRYrnGqOfXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f14dbbb7-328f0efd-1553-4696-ac0e-e6f333b66938-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 097f6e6e20d5acfb68fc8dcd687a80f8cf5136a2e893d9c770d4367f1693415c
Date: Tue, 12 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657610812
