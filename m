Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF97E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658622412;
	h=To:Subject:From:Message-Id:Date;
	bh=9lAlXOIoXfXADG9bxh8SoBZY3vbpPAwwoz5V6BAGJac=;
	b=B08fGlgo7IVZfb8w5f0XasEj4fskk3nYFsCp75HDHKr6G5thx8DREd5FNXaPvuW+
	tN8mBKgPeTa9ZNODVv4fIBs5BGHHTxtlujlQfL1oIcJvoMFtIUaT6jRBVeLBobsUd9W
	2NPRp8OOr6pyJ6FItn9o1AOeZEiUH33ajr2Jm920=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658622412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9lAlXOIoXfXADG9bxh8SoBZY3vbpPAwwoz5V6BAGJac=;
	b=bFVTtLw/7tSquAD2oVckHOwBrSEv8b5bAkTPm/AcSnrPEbSCnzWBpTI74C6rz9pM
	TkBhaHBKVb8bpm32b3mJGWIavuTSKnac7ZCJpMCv3F3t4UU1NRKIU0Dmwqnjd0klXDb
	HuwAiMSqBKWMNDPkMTCpgBZFgxphtI7Qb8uFlj2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d9985f7-3e79fbf4-cf85-40e6-85ac-94a5c4c78e1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aee559f25b610dc09336a42ab2e5c088b7a33c24c8b17bf28756fa0689fd244
Date: Sun, 24 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658622412
