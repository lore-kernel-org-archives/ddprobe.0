Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAD67C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 20:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653509879;
	h=To:Subject:From:Message-Id:Date;
	bh=424m6Aw9gwXE9zBJQpUHFwJFzToVZHac9y2KwzToo7k=;
	b=QPU0a9c7Hs71MfmuFxtyo+VXMItD3Abr4pA1Xza5v7qWfnqvAteUBoHQ6wtZ9Cv2
	m60t/w7w8NDcmvF9KKLWX7RpaqzDcpq8kc3GzQjyGxZrZH8F9eDq+sgWlbmBoZznpJt
	SeJahZJw2f5HwwdpiiuV48A0BGkiU7XxXZkUuf2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653509879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=424m6Aw9gwXE9zBJQpUHFwJFzToVZHac9y2KwzToo7k=;
	b=SsK9NDDEeqz7vlJ3QmfUo1I1MBLv5mXVYu1Z9Qb80UCTNpEZK1RvlBOyd3E3JCaW
	udqjuF2Fm5PKpjg+P3kEi23RcfrldUintKk+zLhK4FlJZKlsTkRfFaQHgcYhBaca1i/
	0LWfGSCwOtT1Ej7WZaZLJk8urk29tSXWFTPAjDhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fcde75e4-30d56e70-ff28-4173-be60-3217de0de727-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 100f735c24ac3cfc06e8f14108f0ce5cb34dbe4255eafc1bc333b8c658d71f16
Date: Wed, 25 May 2022 20:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653509879
