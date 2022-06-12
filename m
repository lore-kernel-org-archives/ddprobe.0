Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9227F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 09:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655027579;
	h=To:Subject:From:Message-Id:Date;
	bh=uWgxmm4PuZii6X2BmvszVZSdGMOffVmO7AIMatYcQ5U=;
	b=NnsElhTPcCWH8xewVF5AFgaCyznWCpMWSU2HnjigjzZ/qB4fo8h788awwocxofqs
	rlIyNnSLY/37Rq85QWKOElOiJQM4cBOaab5mcS2yKMxg37ho40h5QhkQiVl8+KoZHR/
	nQJv0mTlYzbaOIl4zMCEvO2hRkqAfgZuJT89MjWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655027579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uWgxmm4PuZii6X2BmvszVZSdGMOffVmO7AIMatYcQ5U=;
	b=PQiDImfotHOsrKldEwFBXTh+Rc6U+UHQgIXOgJHD33G1VUrd2vGhgUfYOejPRMCP
	9qdOf/kjkfxZPk190swEuxNBk1QkBslRsOFNK7B/35dPwiTJufza58lpZ3JDSfrxmKb
	Hv5Cs6RgZEXqc/sswcM/XFrInBH7oUanNi+p4wMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815754b97f-e7527633-c369-4d30-9f2c-76270c7b16c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8adb8d236d74cb02d91f8a641601503a67aa9e80ee623ffda0d07d6c2f0e3fd8
Date: Sun, 12 Jun 2022 09:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655027579
