Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1810D4C6D
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658255212;
	h=To:Subject:From:Message-Id:Date;
	bh=hNDohEZiZU6IKNIln5QSG5Ox+GmrxTkK47wvZusEgXw=;
	b=MCsrO6Oh/69UdNguwkZOY28nz4URB6jnoLv8s0IbkHd6k2LM4aKgdbOp1yniwe/0
	MGVyi/CXHY3SxIXrVDFeRkJPWzM6mUOxEV7UIlf0lmIx1+wtsLEmrG6qS+PKX0Srppn
	sHKD370YuxsddY403VLITJmhmhmFAD0xApIVlqCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658255212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hNDohEZiZU6IKNIln5QSG5Ox+GmrxTkK47wvZusEgXw=;
	b=Br1vVrSwolBqJjawoN/0s0VyqjGkMuDRK6BEiDXK/pt7xsud7cBcd9Tq9NXz2Xmo
	Qdcu8MHlB/v7OaUAa4Xr5KO7z9h+3S5GwFJ1K+IpoEj/F5GTvjn4y1haLjfWhaYIaDp
	AGrKDxyBW8jU75TjzYhTrLFBhLAMJn4HvZa0o9tc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217b67f06-8af8c678-f93b-47b8-94e0-b264044fff63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3e24a4923cce60295176a00b6f50a78ab56c1f8f9ac4d4605ac2cd63f81a675
Date: Tue, 19 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658255212
