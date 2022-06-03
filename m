Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1467DEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 16:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654274219;
	h=To:Subject:From:Message-Id:Date;
	bh=kGBn3hFIzB7w8Hmli/Mzu23IT+l5k9HqM7yWD8nXkEU=;
	b=lAY9sOgpIH8VmWcp0VBoUdfxuRmbMtz5li+aisgua2wCr/yD7g0GM7CVOCrQujQJ
	bpbl8tA7T4buOH9Rd9kHpxyY3TbFs8OPikkl7y65ODmwFLGJnyIon7GOMDgFmBVnTNt
	QEoXIRBlvkRKZjnFSuyC/NIHijdwWuEOZEa+UeDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654274219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kGBn3hFIzB7w8Hmli/Mzu23IT+l5k9HqM7yWD8nXkEU=;
	b=cCHq7E9Ch66KFrOM5mPynhw39UPP4GdgUNXBnGJv6YpelHwl33QWEj9qBKHXT0Ao
	oAI3L7s+hS21PEX+yAfASNbkVKO+SwsFkL0BpNBTCKS0D2yTGxEEGqMCrZNzzyGaJHX
	uq5RUN7ss6r9YdIi12MbA8cdgBMzcKPIXe0OhOAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a6d5d4b-c8bf68b0-7edb-4557-85f0-eba60db8488c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c4cee5c7b1458bab1ee32397d36f77e55e6b0044e62724dd486300c78b10cf9
Date: Fri, 3 Jun 2022 16:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654274219
