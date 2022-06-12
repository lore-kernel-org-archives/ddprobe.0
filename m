Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183FA7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 02:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654999799;
	h=To:Subject:From:Message-Id:Date;
	bh=GYnzAoQ4SwSt2CTZQrk16sUoG9QtYOjXuFtiAqirZ/w=;
	b=jSBg3F+zMc6BPsyn9W+4Xn9PCLTqd+/DzzJACWdx0oCxDq5nsVtkDorXV2YL9jbm
	0IFP/SHgsVOxyQLU8z7z/y8SVLeCaJ9uT1hyvhbme4VE0qRjXfsn5FIXbvv8XRvdp8c
	vSSha5CfrQLks3QSDcDFf1ndYnZREiqNofa0AsXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654999799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GYnzAoQ4SwSt2CTZQrk16sUoG9QtYOjXuFtiAqirZ/w=;
	b=NaHrOUAabVqhhHwuGKdYuUj+nKqJ3PyWzxO8qawILJhvS3LdoHAwvxPr8yKTxMXK
	xu1ue3LWkREuKXZKBTttkFfV+WJrpsP3EBFJSPPDrC4Vg6Z1mV/g/ILuFsoBJJG0hsT
	Encgj1uBmBFI6Atg+RBI7IhO8kABMWHUbm5zDDmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155acd5f4-1d211c3f-81b3-4fb7-bdb5-0f1bf4b30062-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d8c3da260c8efddbab4338345faa52994f8336242e173b2279dfe65f4a6ee23
Date: Sun, 12 Jun 2022 02:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654999799
