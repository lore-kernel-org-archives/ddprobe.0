Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104B5620
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658815012;
	h=To:Subject:From:Message-Id:Date;
	bh=Bb9Ta81ZPfZ35J54OMUqxPbFq/C07A4zl6UkAGyNQsA=;
	b=cBnWjyMQF8r+IJCvS2zbogoTWLUecehllunKHqsQ1JEqBmClwPURii9V0o6DkRk8
	0QzeNH2+oxXaNQU9cGqBQxYHRknXDHM29XqJw13DjMK4kxPUOF3L0fv20V/USpEmmSM
	FPr393iYcMtw9RV/VSaZxvjHznyA27uwczjGPlSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658815012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bb9Ta81ZPfZ35J54OMUqxPbFq/C07A4zl6UkAGyNQsA=;
	b=FhVhFuvPSCH4k+nMvs76J2HN6dzPi6CLByeRdtei2wAOlaCZzOcQOZy02grBlI5a
	zhIAK6TtEM9z2aXMipfShejp13IH+TsEi/pd6viQ73/lCUAP5hytv5nEP+yyfO3NiAT
	otllod/dIkT0fzjo8XEtzAn7gP/kFFWV+5vBEyAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239145dcb-b8a7cac1-8189-4850-876a-42e76e173fb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eef0502ef5ba9bd67907be90374454f4ba5cd66dfd11c7d64e322161dfb3bc24
Date: Tue, 26 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658815012
