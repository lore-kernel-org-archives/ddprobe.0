Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A8028E8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659181252;
	h=To:Subject:From:Message-Id:Date;
	bh=S3vK8J3Iu5gCVmiuXF1miHbM09aQKa4QSBSpHktZ+Go=;
	b=ZkwkdvME9plfnynPkIqsr4C/5nyCraBiP1lOP8Go5J6rOqi3D0dCQiJGFXRxTSPP
	JOH8jvO9ZamuW9tK64lTxlZb4e3KrhtdwMU5zNMbsykq4V6uXzoDNdkT4jmg0XscqQ/
	M0YRPjUkT2aAw0ISyLjOAh9g1DdNSLbalPof/i3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659181252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S3vK8J3Iu5gCVmiuXF1miHbM09aQKa4QSBSpHktZ+Go=;
	b=gXP0+Eq/QmvXz4P3C3GPe54NNmkqkr46yyTAFBTtX9MGu38f/UHXaadHuDpUKyt6
	LOmXpmWvxPzrApCmNMDIN6hkLnHn24I9aLDdBHh/76AZzQtZjtUsBlmdwNMRWyWJGTM
	kBuM0KGTTQA4NQU/N+ymXlu7CrmTBb7IX/MVCpCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ee8bfda-32c8819e-0a25-4fc5-9b96-57e41954ac74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6813d3d1bd32b1741c6134fc019a14b4ec6580326ec0acc8c72dfecabe6192aa
Date: Sat, 30 Jul 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659181252
