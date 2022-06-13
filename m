Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C067A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 02:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655088479;
	h=To:Subject:From:Message-Id:Date;
	bh=PRhvcRRCHW0vJ5ePlAatNm+ZUz6DB98ZNEljPrAP+64=;
	b=Uk9boV+TA6KU6G+zdZx6DCmAbZyVDe/FNB8pqTLCvrrcHssViFCckaEqqvJNyhqw
	1hbs7cQ11rPCh4ncx7b1b9Lr9v1nj0uZMK6l7EfMOjqV7p8JXAxDN/JdMPk+eSrIkVm
	JUvor2r3fd+1DClL9bFAzuTvCGs6cHKvvkkELEPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655088479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PRhvcRRCHW0vJ5ePlAatNm+ZUz6DB98ZNEljPrAP+64=;
	b=G7VMKSAPeI5XnBG7tDAmqTFE4b+donZpSJ/avOaVBLJeTbeHWZohiafS82uSGLps
	PIarsi55EyA/2MeoV8yceATTUG7BKSKUJwAkFd3K7Y3CONSecGsryZ8azfBdhswSCSn
	Vldmn3cjbkav0eej7vtJZUfiVoz72PhDIuFj6SUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815af5fc29-9e1e7767-6b06-44f6-a080-99bd99eff183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 126857017a73f57a5fdc800f949492811e5494e2ffb6435c3c9d0c68b47cacf2
Date: Mon, 13 Jun 2022 02:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655088479
