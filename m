Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1DE626
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660290652;
	h=To:Subject:From:Message-Id:Date;
	bh=jmkq8aQ/t7K8+AvAvJUDSV6poqb+80pUeCPv6KVl1HE=;
	b=XMhdbZBoi+TLDG47S/QTRSQxMppXB4Y72TM1Stsc2LP5sY1C7LtyEM6TPP50+G39
	d9BmE/pXbcF0l80WobFKla3fOGJATizYgpnthYut4Wo+MHJaa7E5ZMncByo2XFCaENQ
	azek2SFgcT2txV4DvIFB7brc2JF22B674TI/HrWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660290652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jmkq8aQ/t7K8+AvAvJUDSV6poqb+80pUeCPv6KVl1HE=;
	b=NLoG4IcuqdzrGLu56keZEGgcBAd+O86Hcsn6u5IpVA6WuX3lVhjkE3eNu3Vy0fX7
	5AZtyZkPHyiDf461/TTU2x+oEIgpY3/FDK2ErDfcQ9mtZGWlamUt9WV0C41D1lHhkmk
	GsZjHItw1YJFkiYnFXV5jlR1G484PCDw0TRBcaIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829108d997-fc5c77a6-d06c-4e87-ae10-9125749f1e6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10a4df1e6d38b9e50263ee5d7b6417d1b5344bcc1cf593303909ed049fb23421
Date: Fri, 12 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660290652
