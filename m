Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFC57A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657978012;
	h=To:Subject:From:Message-Id:Date;
	bh=Qp99rpkNPFg1+Phc3TL4gKlBGeGjs3qk8hZ8/W8N8eg=;
	b=jiqn+TxGBeunB/JawiRHXr8TG8NBBGqkr9vCysX8aFeGCmczHTmYDu/M9l28EK7a
	h0/tXtQ3w2lEesjG11+wrOF4/m6T1v2gYc3nLn6HXHuPAIPEEGI8I8/j0iyR4pwfS4p
	4nLbT1lfnrtWulje/6JvXYwfUWFl7kcrpCxv3h7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657978012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qp99rpkNPFg1+Phc3TL4gKlBGeGjs3qk8hZ8/W8N8eg=;
	b=RslQ01cWUpmcQjhcOMhvSyB29erhJSKhJbC03I97uJlmtZA0shFU4CkYIEvCf2fQ
	9xjGxfR4tKMSr1SowgdWOsg01bRne82jfLVDn3SkbLFL+rLpwFVHNGaOFMPDjocvl6X
	dIyq4miJSF//ZMQ6/G1BrVVVw6CBQ38ikY4uvu8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820730c26c-70b85bae-7216-4a0f-bb96-faaf939b8b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc556943456b5495c91485ed9af1d1c380dbe1ff2a0494d156a55cf93936d077
Date: Sat, 16 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657978012
