Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230734410
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656809812;
	h=To:Subject:From:Message-Id:Date;
	bh=cxyVmSn748SAAw0uee9CtQmyQqX2VVGvLTy00f/ImpI=;
	b=dPyJx3v1jtIlYzps8pLDvJ8G9ibfzuxEh8dki71wIFHQn6wW67UGwQYfnXkhbG0C
	3KCcScpKsXN9znEOuWs55SikpdMs5E2hzWiGf+GDhfyXgFyJzWUECXSIqCNkjzq2ELT
	ZHJT/00LJ5wdstMKG3uqYPHqsXOq0fcSfNVU23iQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656809812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cxyVmSn748SAAw0uee9CtQmyQqX2VVGvLTy00f/ImpI=;
	b=QqZL23QpFFp9/5gDxKkiq3KLhPBU6vPH9qjmf//e6r5lUgAebFIdEsxKqI/CnB0O
	F3pxdwQ67j0xRt7cpuUv1/UbmwMWvcIeKU6JmopGcG02nlPl51gwMxVw5EYV8tLfiRs
	3KoSM+qRwMau9dQncbXRGc+skUgSyRDTjSPDmbrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c18f717b-39b8ebe8-11d3-430e-b23f-322953432bda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95dd40054d1056db86f1be247b3abe569ade02cedbe934beb68fa44eccc5ea00
Date: Sun, 3 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656809812
