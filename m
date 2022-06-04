Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365AC10F5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 03:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654315019;
	h=To:Subject:From:Message-Id:Date;
	bh=QZ8E5kkvitCmo0XLJe/QmPm8oQtjIQ4VwXgvoixZTNk=;
	b=jrvsCsK6wVB0HV/eYYgXENCMfFYpGUg1dxPCAYyCQkD76wjrAieuAIN8RBrj07Bc
	r0i2L2KD2tFTXSbtoMPyqtO531IVEPsjw2csM//cbXR9p9jXdCc+4td8lPkhgGvVXQE
	o8C5wGVSppGh8Cy7A2/Qb7dIjhSpeO348PPKKA6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654315019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QZ8E5kkvitCmo0XLJe/QmPm8oQtjIQ4VwXgvoixZTNk=;
	b=Y/NADBrccJtKK2NJiYY5OdmE9zfOfyoZsMTacyYXiPlN5Ob4Kz9N0QSunadDz556
	yQwKat8yhlCqD3WsU2cQMrJ9T/j55vbY7h/cHa5rsGsam+tYw982dl/MbzOcICuuNnC
	Oh22lEPBeOdbVI1EKQLnku8UFW4hPfsrTt6UIEy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812cdbec23-152a41d2-5133-4fda-9702-750e536b708e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80280ad019e29f45e2d02f9fd2e9ce5734e97c227237761c5ade11186b94201e
Date: Sat, 4 Jun 2022 03:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654315019
