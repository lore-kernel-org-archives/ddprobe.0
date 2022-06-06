Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC527C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 17:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654537859;
	h=To:Subject:From:Message-Id:Date;
	bh=sR9n6r2Lzkd2XdQGrgy4wiN0k00BU9F607aglJuVNvw=;
	b=PNd7F7idc6DR+i2D340qNZ64iDLeRpOI4BsMTPSfYwj0NvmFA2lgeRVsjFJe0RNc
	/9Ldm+zWsCwaBVluuhoOIO+87i9MANTVXOQ1Q5wrboj1Sxr2IHHuk1Qe6/EjUjmum/a
	04GAMFq4JK+cpGLZsmkOrkJ/BKpM2p7FgjJylUSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654537859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sR9n6r2Lzkd2XdQGrgy4wiN0k00BU9F607aglJuVNvw=;
	b=a7I7IpR1iY4Z8G0ZJmxPgRz+C/JNcVmvSMpd9egiKsfPiYOJB9DkdTds44aTBBQF
	bvHxOFOB63HQifZrqDXdE7BvY+gbdzAlSdqCNxIPDtIGTz0CFwDLKGno9MIkttc4I/C
	Lj2BWTe0vg0fip9d33XO3Be3tadE++OxGZeGUxAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a2430c6-0d4bd17c-9a26-404b-b3de-c2750d9ff241-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25908d1ea44ba419df90d062fb0f1a8b013b8fee27d560b4f3fc212d4b453e73
Date: Mon, 6 Jun 2022 17:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654537859
