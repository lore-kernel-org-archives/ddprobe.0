Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9C333C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657027012;
	h=To:Subject:From:Message-Id:Date;
	bh=rDD+LDm2VjaS42E1tdOWM/83XkOKA0CTfPqeyW2Ox2o=;
	b=WZFKpyIUorQ/PZZ1bjnC+PC8omm5xdl4Fiy2+igkx5FTCQdHiPptfWbosYada8dk
	YFBZQOX0lc7rCPbrK63jS3IcSc2eV8xGXpQkpQ93/S6k20hGaqkQfPGvMBG8niHeRrt
	J4flg9L0gXlASTf6mcPfw557HhvmNujYZqvLPgu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657027012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rDD+LDm2VjaS42E1tdOWM/83XkOKA0CTfPqeyW2Ox2o=;
	b=hivONKab1wPIKKUdShHJnIHEm20Ef4LuFoS/ZXzi+l9qvO5dDYxnSpvbzIrCqXRU
	id+z2xfMJZRZjIZmTQg+K13cIgcZoLJzC2Qfg3SptVU4ioAjJ6VdPSAm1zbta5YnBCu
	AszJqXXbQdR+j/hO6ErhPDpGZ6Ec9edeV+fjCQeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce81a6b8-f59d5d0b-8ca3-4296-b4b4-818c75812831-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1928c327b505c063af0cbbb246ffad5301014bc8a141c909f934b6c184ac9b1
Date: Tue, 5 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657027012
