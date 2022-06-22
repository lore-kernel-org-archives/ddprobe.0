Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050771C26
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 23:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655939759;
	h=To:Subject:From:Message-Id:Date;
	bh=9iZoLfd5ICIdYddWPehhuGs1Qx4yphIwLV+/sIxHs1Y=;
	b=RQIn1JOp1JjDV6Q0ErWMUNrsGENX4OBJjiFJ0uEb3od+blI90kOLZbASjkW0brgH
	sfXyIX+oOv7W6FS9WYT5Q4xNptcaR2lzQV5UqqhpLp1qvb+4j57OJhkkUTAZzpEDTUp
	zsf6azUdI+HBJQpx4Gch6Ox3QiEC4NUzng28hn10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655939759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9iZoLfd5ICIdYddWPehhuGs1Qx4yphIwLV+/sIxHs1Y=;
	b=gxsVUL8YUwYI43IqXmY4l2/4KH6t0Zvum/exD8VCc+MDCY5WB0hNntsDHwtHuXhe
	MjdBCsDuzNidhlUwNI54ohBtK7U1GuAjyFCWZYDts8f4BIhb70oYNn1VTsWky2w1663
	zKQRadf4b3Ku6axNC7cpaca03UjD7gsf6vFgqpSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818db37ca8-d16ae641-2baf-43dd-be81-39737cf107b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4902ab56bf3a851a80a0c1fc58cf9947df21e46e2376ecdec79ff9f0551e5213
Date: Wed, 22 Jun 2022 23:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655939759
