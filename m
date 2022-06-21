Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36BF1C00
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 21:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655848679;
	h=To:Subject:From:Message-Id:Date;
	bh=yDltoelV5itjWJZOGFgpp1BYdgs+DegyvLgfbpSB4sM=;
	b=iz1u0PzoYSekoXDAF5w6Tyw0wAsftTMd9boiT9X/4JMWxOxPCFw7SZjH+nQwHNAr
	TI7CF0OvdmGV55AI/ClZQgpYtb6t0iR7Y9cky/y9Xlu/KMF6XD13qdBtAW/QvCXhy95
	q5OFg8EsDxaW0JV2wYOUyR9/i2YQIK4jmbP+ed0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655848679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yDltoelV5itjWJZOGFgpp1BYdgs+DegyvLgfbpSB4sM=;
	b=fhgM6viyIIjrcEdJa4GTSrA1kUJKpGtIQEbozrU/D9G8mY4PjGVN01TZJPFN1sN2
	R4Iu1/aVRh+bP/uSYTedfEAGK2v6wXkJkVuip0CCft6tnb8YkVSCX5DgLYozRkrcu/r
	8nG1BYZFg1WrtONs2mmRG4ZfyoDOFccGW4xUR8+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818845b77b-2cbb81ce-383d-474e-b78e-7051ac7749da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b942e24f1463ba857897170b393451bb90bc67553eb942e1942c26395c399bc
Date: Tue, 21 Jun 2022 21:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655848679
