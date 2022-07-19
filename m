Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CB84688
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658252812;
	h=To:Subject:From:Message-Id:Date;
	bh=YyB3jnsHT75dd6SmqFD//077etKH05zLgW8/CmenXrs=;
	b=f1Sm05m6edFF+QeA94lz3fbg18cVhuEQnHQ87wU+s+52U9yHLZuOhNiXVTCDYIst
	lbhhpeDiy0pcKDM89h9pJRXw5e73uHAlWcW7KKaSiAJL49xJo+r2A/PIqDWmbJEnk4h
	ao+4wmLLxMDDyYItpCjpvAiSUni3elvQ2qT/5GPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658252812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YyB3jnsHT75dd6SmqFD//077etKH05zLgW8/CmenXrs=;
	b=Z4FixHnM4AYlUefT16Deq7Fg9MdM4Itqe1pX4/6nAO1sWONB3C5QWCDdAMEXTOyZ
	5pigOfyaFKOnakhavNuVfQeDvBvtGVC0kZ/rMku9tn0IDXY5gmhjUSYy8g12Ckgxe8v
	F+aLH0EHfrJCrldTcxOb8VPaPIWY2RH6/LFZrtmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821791dfdf-b5ad4c93-79f5-46c6-87ce-abe3fcb7a65d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3fe2fbb8f5dc24811a72901d2754e37f89170f914011a87dac47589c4a8b9f7
Date: Tue, 19 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658252812
