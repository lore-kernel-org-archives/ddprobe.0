Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284D415A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 03:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654571819;
	h=To:Subject:From:Message-Id:Date;
	bh=EmHd9Ipfw7NurDx7vA+dEGPuqJvfuKS6rUVGu5quxpM=;
	b=gmOQKNHclLAEbBuNGHS/1lY+oyrXU/aWoy2OarHbo178nE3t9Zg0gJm6SdATtslA
	btITaGTvUqIRe+QU+eN3Xv+l0D4NcA3O+j60vrPtK8Dr7LtLT46p4Eqr4m/LjeZ1Lqz
	MGV1bND1na18M1P+wct4Kox1UduOK8tfi5rW7we4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654571819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EmHd9Ipfw7NurDx7vA+dEGPuqJvfuKS6rUVGu5quxpM=;
	b=LPjY8OxHU2Fcaihp8cZpLFVHPdERyr3BTbGFW2yzwywVNWYLR5oy9dNcnVrYg+uW
	2xpKEwPZyXzAHHm653BfnMf1MDrEY22yJVpR7DBPjKC9qIeSPKbh+RmoyR84fraMrys
	D1o3yeM5p8vKP+QgS8f3WAizSCDFChDIoSWVdezs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c2a60d7-21c6936b-29ef-4f6b-9d69-70a9dcd1567e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e039ea2afd857d7278191c49ef83420e42986196222520b8e81a9b2165915fd7
Date: Tue, 7 Jun 2022 03:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654571819
