Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CC636D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658003812;
	h=To:Subject:From:Message-Id:Date;
	bh=id6/g8bLxWKGA2LU997rGEP0b/wHKE6bDvNY2N7aP5U=;
	b=SiGcq3If514YTJB4HwcTcrZDNZ+2srCg+4IH6hwmSA+zLMePcAqsLXDSwJAgH2s4
	1QiYneznyiJngaveGnvmOPtS/wgASg8dVCrUDuzzYvR3WsPc5wY2cT5HAqdbtUkT5k8
	61oQKURZ5Zi9rzZN/eZt6UUAbqolMFOpXDmsUY0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658003812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=id6/g8bLxWKGA2LU997rGEP0b/wHKE6bDvNY2N7aP5U=;
	b=abN4cbp9/Qzdg1ZrlQbhlKx41e/qUaVMRwjKwd5vvHQP4K+V0MlXuF1n4vvO7+7U
	Se817sUy1IQGTnepAjYHFOZ2pt/vBgCBG3xpzP2nxb7o6il7NVLm4IlffOtzQwM9eX7
	8a0yI7aoTA0OhYF4DGp3SCcHRSqg4MGo/vbpRvxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208ba6ffe-cbbca58e-0c1c-45b8-a97e-8c7dd7380596-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b68b332a206f7f5a4079d6d5e2102bedc24521dc80b50150ccb036fdfab78559
Date: Sat, 16 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658003812
