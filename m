Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D03EA2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656577612;
	h=To:Subject:From:Message-Id:Date;
	bh=24kCedTFeXnzAqHjlqoC1m/WwHQrpfQu/ESiG0+pqK0=;
	b=lNXB8VTNvYiTGtnb4wtsMhzFne/F8vNQrN38Rae+EJ2gbej1QM6h4Qaedzg9KAfY
	XqvSOPkcq3Vj8Agh9nClv/KGTsLEK148R1qphxLTn+yg/1PjdoiVZUvphJTtBgLP1xd
	3MqenrDWMgrvgyi9NAXMQU937J//1TA027FzG2yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656577612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=24kCedTFeXnzAqHjlqoC1m/WwHQrpfQu/ESiG0+pqK0=;
	b=KS32g71TZFiVx9D0Z7VfD7tplthkHCjlSWp0JtMD5Rd98hcS66fcDUTyOV4ZSHNE
	nwwmtx2v8A2LD5SdfHDoEm0OGxnBS4yhsgTG8dNlbz0FALzieXC+fOLTPCI40zXFgr/
	qf2xQbllGRgEVmWCIzJdVNgzQbnFYn9dxEGyK+yM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3b85a3f-7e9b4daf-83fe-4ef3-a310-01fd516d9d7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9657a3755c350fcfb18521915f0b419cf39397f31271da55513d9ec09e0dc38
Date: Thu, 30 Jun 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656577612
