Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA8628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 18:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654195199;
	h=To:Subject:From:Message-Id:Date;
	bh=6fVko/kYygYCVykdWnE0gUBfQ9C/hVMK5BG5gaBysxc=;
	b=UlgRS3HaysUfsaun4gimQuzR7q/JpIcwgIFnz+VWT3QbQhzCk80WvDCj1cRDAi5a
	IPS49zv7GLaDlBRNhvYzPYDDBWGFiR4WXnHfV4Vkf1Lj6Ml4lCAqj81iYyJwWPTzV8u
	7sapyCCFt8bFzb5yiJ+xXq/xZs/qE1zSHtG2vlfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654195199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6fVko/kYygYCVykdWnE0gUBfQ9C/hVMK5BG5gaBysxc=;
	b=DjM2H2U/JeLmV6XMMex4IOdMfbgCgQo4XBt5n3Npmmjok4GK7opu9aUQZfrmpg4D
	WbYgkSGx2v8TZ+6CWDEqYLziwQPYQV3rIa9wr88LxgGiMpFiq3EXn/PGaxnFu3PgNA7
	DIyQ9SQgjWs3yqD8W/5R70mdXG7Lli6KcZXWjRrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018125b79d5a-7d2e45f3-485a-48c0-a6dd-dc840447a7fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e1d594374009398088fe14de1501f0e894c366c3f55813d9a99077431588cfe
Date: Thu, 2 Jun 2022 18:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654195199
