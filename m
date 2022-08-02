Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484077F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659408652;
	h=To:Subject:From:Message-Id:Date;
	bh=EK86aBR4WZ413rpnxzEfDJqzY4+CVF+ymkpnkHVVDYs=;
	b=ipqf5fFqHob0mA8i5aiYKO98YMMWigZwvOMhDH7+WOg9UWutgMk8FtedMXJFg/Oo
	pAeHUOrx+7V82VMoQrCQHZ9Csh96OFdKLcE+skPzUvtnaD/8Kndt4r4jveiF8vM7rhx
	qhoVShh2nHEdFs2LhYRhI059KLUsPY3VDGzQRR1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659408652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EK86aBR4WZ413rpnxzEfDJqzY4+CVF+ymkpnkHVVDYs=;
	b=Gbtayr+o5AdY0qNiCypK00H3o2/96bRXcB3c67cJaYbkKKIbUjZ1soC8COpTWeZL
	SIU6DqDNXnmeOPVxb6aUQ3Y8UhmZcDQtNpEb9GfCX1oml6/qGY8chTS84mo9Q11D4g2
	csfn8Ub0ivoUIGif0VRmbzvz8aOQnrHzORdqqhBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c76995a-683c8682-5903-4c0e-a4fe-65af6011a281-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9425dbd6ef79b947b2e0c77774a62f4018a05208b5931647580cac2908cf9264
Date: Tue, 2 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659408652
