Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5679B23A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659201052;
	h=To:Subject:From:Message-Id:Date;
	bh=juYaBhnxllmntQq1Mv+g0grhvAymOE8wA9mrTCTGHKM=;
	b=ZF1oZt0eiqmaHm7SFDqdz8815HDIybrcId0I2NAfHulL6K9m48tfVoumvr84/B4f
	dnstOIhV44djEACeuDLAGEHHVj7PqUThw4PHNl2rLvqIFdMdEcIzx5NhYS8gM0gLtie
	otGfhDGQaP5G5GK/XFA61aHgrVpbGsKAsvZ5QdSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659201052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=juYaBhnxllmntQq1Mv+g0grhvAymOE8wA9mrTCTGHKM=;
	b=M5a2PzJIS7FJ8ZQyPem28qfC/1mEJ3Vd/JkpUTfRlWu3fSll9zMKSCUK3rFGP1oq
	pb7yCPydDOIjMmci11B9RGuWT3lIx94/6UBr8UtNlQArSFIags6QxLPHA1/rMG0HkxE
	DPy5+mhxdFNhgEzZ0P9Tg0eXvDYB1+49doFQLT5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825016df95-8518f06d-7069-4e6b-b74e-c12b200b9f62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93114d0b6e2f18644d6586480198653e4376867724c052867c881af38fe2e1f8
Date: Sat, 30 Jul 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659201052
