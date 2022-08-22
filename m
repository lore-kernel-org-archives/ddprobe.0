Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9554C63
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661206252;
	h=To:Subject:From:Message-Id:Date;
	bh=m7Afm+Nwp41tx+R3qrk8RrpeerYVow22C/SOoSbJ7bY=;
	b=Kn0PapAz7l9QivUtTJsf9OV62g4NanQD6l1+JQzWng4ZOyKHkgeas3jdzwPm42WW
	/GX33bROM+D27FObkis3Stu5N3+whazOc6SBiN0W8LzVYvw7QdlS1R/ZvI81RoERkpt
	RR2Z5FgfY1aNXZfk0We78X1dzSJf+O0SM/hor3tM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661206252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m7Afm+Nwp41tx+R3qrk8RrpeerYVow22C/SOoSbJ7bY=;
	b=HZmF/goWC/ru5rYikdDEmAudSeI2WdExVtP6K/Xj15TRTj8ONxf5piwWgoIwGU/m
	KLJ+VZxMhYohwz21/5vRFMFbVWggKpKCexB1xpbReqnFLGa/pGAuFJwE5hXKCoIivVY
	bcdAaK2RJ7hLdihXL7Nf3SoEz8rex7VmJUS52Qpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c79bcc53-a8b16dbf-ed0b-4116-a08d-eb303c681dd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbed7483a1c53982057574b0559e9fbfc4152225dda3dcc21842f752d4625a91
Date: Mon, 22 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661206252
