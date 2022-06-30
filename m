Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22911813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656568612;
	h=To:Subject:From:Message-Id:Date;
	bh=tLBQjbhA10Fe26FLnUdSiI7wIU2Z4l9WAcsHe7nQbTM=;
	b=COhRNMfB6QTlYuXzjel/ApNuAnzyQ2pvG8S/lF1Oj0aKegZfFTMVh0pPFBiD/D0G
	iFOEvrw9yX38TnlXI+aCjbGSDxGSk3QZFlkPG8t9KzOP8ei2odxjsuRe69PDooadTLG
	5Gr2iP9VoIFZSRdaFHEP/Y4FS5cXRG+TFEA/86bI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656568612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLBQjbhA10Fe26FLnUdSiI7wIU2Z4l9WAcsHe7nQbTM=;
	b=fytPJ4nEhjkBPjbcfVyHIUe6ukFL/aM4t2tOXt9Rd+QCTQBooZyAf+I5OrPXnbAo
	O0GgG6kOtRzyYn66TjlAg4TiyNGrtgTiBQzsVyFiggeklrx4fu1HaUip4wdyN/8mOxS
	+ajrvMiTAUiNt590M6cmPztU2+vGMu//KzQBEdZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b32f05ea-07f30563-4e5a-42aa-85e2-20428bdcd8ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdbd0e7cb5d0dba0a701a649d5ddee73a1f9d8ce93e050ea8f548839fdc270de
Date: Thu, 30 Jun 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656568612
