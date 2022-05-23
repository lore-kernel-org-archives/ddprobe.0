Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A07258E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 15:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653318599;
	h=To:Subject:From:Message-Id:Date;
	bh=sd3PY5NJp+nqeRiUj12LLAH9J5JpF3hG7LY9D0LL4B4=;
	b=BcoP8SSUJl/it7Ofeq9/LZcECtRyS+H8s8IYdaU1+Pam9c+L6q2SkkdUgOIm1YBj
	DM97MTDNpiDL6q0hXk4y4CIYON9eb8JFgcGgabFvsVFZ3ogp8ept+NT8ICYJVI9lM3n
	SfO7EPLOV34r0YIUSIe9t7Aw1bNA7iYKh5+6y6Pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653318599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sd3PY5NJp+nqeRiUj12LLAH9J5JpF3hG7LY9D0LL4B4=;
	b=SLlQGY0Xrt+92ANP5dblOJ564YuwfSYlgmi4ydcrf8QmaZzd7Z7uQPefvVRPx1VN
	p27cJeAUdhzxoEPMzROhVMxf5lEGPDsUWQ5D/GWztX9Mvtb+pgAChu+zYR2GGY7PGfT
	yo7SGQSXnXhP0jS3+ZhAmm17AsU9W2Wd/lQK4eRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f177c240-106a048b-43fa-48f1-9753-d7fa2c3b446a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b11dbea0e7bf51ba70fb37cab5853361076eb7390bdb16d97c6be13e9181e009
Date: Mon, 23 May 2022 15:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653318599
