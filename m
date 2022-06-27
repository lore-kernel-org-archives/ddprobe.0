Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB574A04
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656349012;
	h=To:Subject:From:Message-Id:Date;
	bh=LmA1vdVvnyDlAtXbT6257cyneAe3sx6v1259ohGfQc8=;
	b=ed1zhdMUMhha2f3TB34gXNZlKo3QXfrZt/UF4WXdIlf611TMrG8tt7EVgyagR9Np
	amgFlJs9ljqq+80IhCtRqrBom32JfCbPEkE7moUG6QtSeObWEAPu30S3++Yljyr/XZl
	/KAdt+NWaU8Kfw5XObf4ekh3lko81UZZ0tN2t+8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656349012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LmA1vdVvnyDlAtXbT6257cyneAe3sx6v1259ohGfQc8=;
	b=k0j5WoZexriGnW9OpitjQMmmaskhzF/vs0aRj1kWJO23PV0m1T8crolOoU2QBF7i
	XcfXDzc9nBWOBtXxCVgdFtE/e/f24rudphng3rmfJvqFn3l84B+vyR23StqKjwqv+3a
	6OpqGgaQV2rBOm00kxm/8dWHys5H3M2bcNbd0Qj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a618315d-865c7c90-e7f5-4e9f-b11d-9e20c40146e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8367061b47e5fbeecd7600be8d244c59da46982200a1eaa0669feea300bc3506
Date: Mon, 27 Jun 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656349012
