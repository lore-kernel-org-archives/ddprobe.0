Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA93237
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 23:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655768459;
	h=To:Subject:From:Message-Id:Date;
	bh=vzZQuFn/sm0A0+yr6Bafz1JM4GUi9cpFvePyOTONGFs=;
	b=Txxo74U7JZ94AZPAarGcAN3eNWsyw52fbsKaLA7wCloY4Xi/IJD4joqZWrRqkpVw
	lNPkIHd1zgHDXRBfljqs38CG5PMAo1iuxOukcectSDYQrzYJKXVnCDJJlSk9UC2NoDC
	v6K/BXWjFcc3ezaKS0qohaLPLLw6p2HOZDHKFCNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655768459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vzZQuFn/sm0A0+yr6Bafz1JM4GUi9cpFvePyOTONGFs=;
	b=T0Sts0FMRtgi2KuxWZcm0+XLVgzNQz3mlAH7EU87pTFhiCjkIR4ar4Ry2KBXs3DH
	c6dHKofx88LThazZIdS8ZSiuGIrTHZyVnEB5G15k5ppykiXaXqny5CVLIWIblfNamsm
	VzLPkLF+32MKYeh8Vyvpaf1bdQZuqXspw7diOo/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181837da832-f2a0b27f-24d9-4ad7-80ea-31f0b7f42f72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70fdce95e8ac64e95a2d6bfe3e4efbcfb26956ebce481dbbe1d4c7b523840f97
Date: Mon, 20 Jun 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655768459
