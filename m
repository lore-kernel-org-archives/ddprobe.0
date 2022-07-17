Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0742C816
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658099212;
	h=To:Subject:From:Message-Id:Date;
	bh=PMr6UEfVNjEANnqyEQjw7zicU2RR/pSuwNSlxqS1rfE=;
	b=YA5iAvUMW81vocb0visg6ZachlN6FBMyIx+AgmbB+Bga0RVcZENdGuN+DV0artZV
	oLhnXi7yqZF3AYADMyEXgaH729rHFUOZ/UFILQwTQ2cNcl4s+l97vpZ4S8qrrTFfFJT
	GLtl54W7mYfYPF+e0RBL1nxhPnvbWQtV5ulTrcxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658099212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PMr6UEfVNjEANnqyEQjw7zicU2RR/pSuwNSlxqS1rfE=;
	b=MoJ/uIG4clRGRwo8ETzSToVKrG2sGYuH6jceEcZNwpv7EY1VmKIJIGpcjZcOtKFc
	/TYRVKf+qerpMxv2bD5oygif8Jh4btWZWpRF96ONuFDLQkF3Mb54voUXQgN+sjZrNHe
	JIqblriuuPz3y8t0vuwTQTrbHir8V96xc9eC5KYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820e6a1fe7-32f89e93-97fd-494d-89eb-b777ab2a2c1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b9864562578c5a1b151c6bb08d3e877d15b2b8313af2f75c6afa1a1893390c6
Date: Sun, 17 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658099212
