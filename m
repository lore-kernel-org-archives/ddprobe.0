Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B0815A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659240652;
	h=To:Subject:From:Message-Id:Date;
	bh=W+dcisWqjiaw4cryYyJz5hHc/XfB7n4r+rftptZtnbo=;
	b=EbkCBn1kvVJWnRVAapJMuNsRh3nrpIISjsa7RHCOmihhd9vy4Fkovbhz4QaT1sKR
	S7Walc/iQBUFAS9jzhN6zECf9aueV9VrcOxLiVyGuTnkJb+H2P1QcJ6HsOw3gkahYHG
	GduWGjjm53yaaQXgNTBMl5GMxrPBOlZUom7WkIDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659240652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W+dcisWqjiaw4cryYyJz5hHc/XfB7n4r+rftptZtnbo=;
	b=OjLbpcbem+F6j5Zur83uoa3iEinpDSWwUWwMUsmhI5KiWHNlkl/lOD07c3DCZ+PV
	vj/XivWHCAm6rKc+U7GiWtnyEDUZ/j4GvvbhVIXxYohQJe6I1I/Q4z72Q29iFPog/KE
	nO+i1ItxDb2icmNT3Z2iPuLO2jS7iqnpo3bkhFn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252731f2c-8dc50ea5-451a-40fa-9c17-35aa30a3055c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5998b5f1473badb92a879f20d1de1c96e16217567795b4506cb6fd9a3950bf03
Date: Sun, 31 Jul 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659240652
