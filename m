Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B87B6D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656624412;
	h=To:Subject:From:Message-Id:Date;
	bh=aWVw/Y8nW1/0wuAUnm0ADcG3/mub1wClO3a5k1zKKSM=;
	b=OP8pPy1a2WApgkf23f8Pn4mPk4JnF0QxUx9hzvlpYSrHeMNAPs84lofk7Y0Vv6NI
	uTy4wGEmAKPlE0BTq51GsBTDdoxG4mDwjzclC9bBiJmR9Wni2y/5fpE8G9IjH0Z0rI2
	gWSZOyKBAG6NUgJYz9QaI2Ete3dRw4EL9rweZk8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656624412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aWVw/Y8nW1/0wuAUnm0ADcG3/mub1wClO3a5k1zKKSM=;
	b=cxuZKMNj2tzyGLTVxFpG5SUIF03i1sQ4/h99jLfmVSoye3hM2xbwdQUBNtnDBvGK
	N2tvyvRVwwJvk2IA5g4NlWiG1vgE5w+jAKqtmGgSyLUe0daUwCv0sfqW9p/cQJh03UV
	tAkgeP+ZrpZxsCaKMk4USa7H69cydTxn0/ZHns0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6827690-6a65526b-cddd-44dc-8341-29ccb4fc0edd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b21f275a2f1f9d429505d302d590e1c700b89d18e503c1bb3bf51d4f14fc764b
Date: Thu, 30 Jun 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656624412
