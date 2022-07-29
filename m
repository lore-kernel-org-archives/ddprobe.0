Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D163D9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659102652;
	h=To:Subject:From:Message-Id:Date;
	bh=nWJ1TxRKHpO1akbdqknVxylW/IE/4d0OXUheB77uvdY=;
	b=lddBIA/qIppBNXzX1x26xuPm449ti+FcKYVN0XgO4gt71A4lBNBlnMmO2FSjF+s+
	D/KY/Q7vjZTIxKgEWNsL8W063cCV9dFRgV3K+I76hRGM8penGPsoNxxXJqBf0c8zqK4
	m1jw0APoiJ+Idwdd74nh+QjKYqVnYJ0M+nDIiaFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659102652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nWJ1TxRKHpO1akbdqknVxylW/IE/4d0OXUheB77uvdY=;
	b=TS7p3y5OVfPxfjXesddLRZ3e94r5QktfyWXG3XQkaaNCdiCVzVDARxQEZNF1TGHe
	utkd3H70pUoyFLnr1Igfa8vj4UJLgvf4dhFa21ur5SNTmbVpkILFbk6Fy0q9mWnClUi
	LMDKWpjbapYf/s2D/CjZQslUhbAdDCG9tSmzdZa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a39688d-3c28f143-a74b-4674-a6af-de39099ad2f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c0c89ecc771a48310d138e3f3c41acb4555c2d1b322c8fda3e6e109f33395e2
Date: Fri, 29 Jul 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659102652
