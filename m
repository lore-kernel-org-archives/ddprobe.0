Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AEE7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 01:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655603039;
	h=To:Subject:From:Message-Id:Date;
	bh=/EhgNdwgKpgvJMHo20gz7dSqBJnUjbZ0xVSbjIBuaUg=;
	b=fbqOnsaONvR0Z45fxecqMPfstOpBPw+eFtYB1iCPpt0lwvwG8bkkKkfuDFwWoAnM
	agwKYiOo4ZWpJtRr6o6VcurYPFOlSb/bnSzGoFZ0tQ/Bm0iMk0KVy1X8mITJrZ1g7lb
	Rkxk3MPb8s35s41dow1CZP50lzdkhHzqV2q3n60M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655603039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/EhgNdwgKpgvJMHo20gz7dSqBJnUjbZ0xVSbjIBuaUg=;
	b=ZKslO8dpgOisU8D5D5luEGeHNN38Rd3aOq9appneLf7ld3DGAD/KHafo3IYCKNRS
	49qhXHt8N7jSUWSJ4y4IyUeuDL7v17T+g5Tr6eodtNVU9st6v1Qra7K9w1uwGtjOMoH
	UaSlAV8C7jWD53M5OnwFdoEk00EJFfUtLEJ6rufY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179a18bf2-13b9a03a-b523-46e0-8bd2-bb3a2a790bbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a540e5553880bd7468d9dbbaeb665f512588298d1c4d2a2e47e94b107b3bab45
Date: Sun, 19 Jun 2022 01:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655603039
