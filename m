Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9814E3D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659977453;
	h=To:Subject:From:Message-Id:Date;
	bh=0B5g8BsUApEnD5coxuL3UknhfPTL209icI4kp+/N4jw=;
	b=igx4i/uGWtAPtMjZXLg6/Uz90tgpk5Stt6hTnwScMNoyvbI1UvJkYZjOLQC/XD6f
	ueE7tW1ouTUieXIxuHjankvQLwrD0jV4S7R6XZBkKfMKojXBvubQsTq6X8TX8z8PkFp
	NDsel1MT2wx6+eiJ1X49Z8ByljPGqR0MoE21rHRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659977453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0B5g8BsUApEnD5coxuL3UknhfPTL209icI4kp+/N4jw=;
	b=E8PJhgI8fizcDu5QrTKiEkbAErii30x9Xg27rfnflLRvMdbYliLZJrLFcDvUxQiW
	Tq4CQ0md18Go6mCvkTpFLrh2jKPfneqRwhio6mqzW9hSukUrgVRowgk1hIqPB4s0AX3
	Ksm+fAJlhZ14kZNN8ZXIBDCwBoWbWVLWK8WTcmsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e5dcc3d-3a8690f4-622a-4164-b9b9-2cba0e69d8c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c55bc8317ae90a56a351d19a88e9801dca72f6cdb6f1a90cdd041a39d45242c
Date: Mon, 8 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659977452
