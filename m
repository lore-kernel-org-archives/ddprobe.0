Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C45EC2
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656638212;
	h=To:Subject:From:Message-Id:Date;
	bh=aQyfUMM9jhEY/oM+IPrR6K3hiXrJCi9ycKmBaokw4tM=;
	b=er0gA/1VkG4KlNd/3Y5/GGoxR0T74pAGT+ZPMomGdsQ/Q33UFUfGvm1X042ipp85
	K6uDN79xasXzBOSgBOx6bbFN7zmG9coY0We0BQSF5FHii6uz3EQ4E6Y+v8MPzg1zsoI
	ebM3hM2gnZFxBmRMNR7/m8REo8o6afkhMtqcvv9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656638212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aQyfUMM9jhEY/oM+IPrR6K3hiXrJCi9ycKmBaokw4tM=;
	b=P7zEE87zjoxg1tRugf/CdkvhhDUCiSmMt1mzsbzqGg1GH/nxdTVEKvoIB2JMUwUb
	yL6p09GzMWiUuX7claEokwI+OTJDUS5jLDNvGSGboiX730jtjK4WHI+8gL0nZV9pNpq
	zj168phDCNTO358/B3wy7+ez9IbTriIiQYZ0VSjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b75508a6-926e106d-9c74-4b49-8e02-2f724c491301-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 124f1b353f62e2380ae2440415e64edac2f414199ae84f43323529b4791209e7
Date: Fri, 1 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656638212
