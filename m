Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DA07A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658827612;
	h=To:Subject:From:Message-Id:Date;
	bh=zRe7HiJaZeFOc8/Wrdc3/ztqhVM6tNjCirqNehWN+gs=;
	b=fvmQoIQnbOlzDV9MchZmHltx5AZvP8fGW2fWLzYU3/e/6LuxD5rMUvHQyH/R3Z4s
	HhIsW8mzf1G6WCf4OzQM7gI+L/gPWN799jskt4LkL4+SMlEiY0BjC275C5ou5HQKtYA
	LeWmOd/1QXKMXypriZx/jYPqumFANMNpaYpXAdEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658827612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zRe7HiJaZeFOc8/Wrdc3/ztqhVM6tNjCirqNehWN+gs=;
	b=D18E1U3UVFYQ4yCmKfaS4bD7z/gvHFvvLaCJ8SM+KFVL31b8S0J27pt7Fd6943wU
	H0GtwvySH8tMLQ7LHrRnbBTAWLd3DHSVPN1Y37QWvcYcYQ90KD0WouW/au5P7TwAdFW
	oaDX5MLVg29B7ds4nxY/BCJ0ZJ31Zcb0KCLxg3x8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239d4a0b4-c5d140b6-38ba-4322-8fdb-3767bf13951d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1fc4891eeea053d243c333f3cb6d8e0db3818bc5a4065767c9fc37199875561
Date: Tue, 26 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658827612
