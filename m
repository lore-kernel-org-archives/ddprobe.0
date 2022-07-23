Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488FB7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658549212;
	h=To:Subject:From:Message-Id:Date;
	bh=92cvnxCqjhu08VpGr8dv5H14HJ7/1bqG6HqKeSURQC0=;
	b=fMtOJIhr7sElgy+kPpblwZU1fwQ7Hot9uvAuV+c1tXCOZIEcDxbY1fcUy+dq2i87
	Br8DicbgABSOo0snMxcD3iUf6oGEpQTHQ0VU0usC4rk+4R74NKwWKWQHGdCtqcUy+2t
	y4cQEz2FNCeya+3f17c1SUP3pMzzsCiTM99T1On8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658549212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=92cvnxCqjhu08VpGr8dv5H14HJ7/1bqG6HqKeSURQC0=;
	b=cuhuTqCtDqjp2FISYZaMAooztS//IHplN60ZACmDqZ9TgNH4j3BvIkvVY1PjcjLN
	GPT6b+Zl0yecTtr16kYnmguCwEm3sILR+U64aI6oTe4e8jgDIpcwp44ozL8AIbKd7cK
	hhuYdZS3NyY/tFsb4YAjBQBI5mNlHtd8G88MYRho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182293c94d9-b05e7e5c-bdbd-4b75-9ddd-036cb22bea2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe2fdb4e9bdbc9c80592353cd2c6f69f804d4ab43dcbbc7d1f4a90b32009da1
Date: Sat, 23 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658549212
