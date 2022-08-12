Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B27365
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660280452;
	h=To:Subject:From:Message-Id:Date;
	bh=g2hhPc4MRRFEZ9zRUOvKUuFc3UZXKiIADV2AX57ZczQ=;
	b=WOLWDemZjorDfTtoAdyAvebLhn9JYmwGSRApOPzBPlZy1pgjn4L399lQqb92HBmx
	v1FOO9tWuW0VdPBSTAlgm5Xbyh9ty0rksFx2pMGIh7NS710wKICvxhqNMyDHv0VLfjV
	3s/wGCctDQrpNtEEZeg14zfA5PITxdl884o5PSAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660280452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g2hhPc4MRRFEZ9zRUOvKUuFc3UZXKiIADV2AX57ZczQ=;
	b=Ja2Hd7ZHqMsCr6m7B+u3TQwF+7zzO5KSx3qDBmLBiywPHb+W68pWaEhOgPoj7lxh
	+w/Jr/butmFDc94MC0l/g+UGpbhz9Rh3djgrc0QXUbS3iTDMLvwX8/R298ZMMSmvUsq
	XNpVnkCjyEaSscbrhHYVzi2pWoFZlIl7xW0vJEzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182906d360d-efc859f4-1d0c-4ad7-b826-7cceb4814cba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b4e1fabd8cf84a69bb4107a5a1090d1d2d24c4cb7f0b7df912835e277322fdb
Date: Fri, 12 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660280452
