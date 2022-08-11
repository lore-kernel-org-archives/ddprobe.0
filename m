Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8F82F5F
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660219253;
	h=To:Subject:From:Message-Id:Date;
	bh=w7/4f8KKe4BtRlCZTHq70laZj4c57xzYrys/KLd9YEI=;
	b=V4MH2F7PJUvCpHB8SLwJIafFuS5cGS0slIVQniN18HjwQYK3FzFUwYsT1mRuO5RU
	yFlrXmyUqYGOzem3DW87/mna/pfylNq/a3+b/0AzktnlSy/phuRCEpWmt84VLqYNknD
	tU1kQJeakq87FHIVdSMVCwTbgK44dEs0EfTPAsfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660219253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w7/4f8KKe4BtRlCZTHq70laZj4c57xzYrys/KLd9YEI=;
	b=IZMXNFu/V2BPgLIbj8ckcbQMug0AvcNBhr25vCAFWYea5TCsn2u5lDqBIA0c7e/3
	i0YyX+j2VQVLeFadJIWxMkdvebdlY4dr1ZDRndiZwA72+VVyxFupwFgQrZy5kVaZzUl
	Rj8+9U7W1ccCohULBxBKuzZW2OiiGxuq9Ek0W12Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828cc7602f-63998a8d-84dc-492f-abbd-08dd34df3183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e22a6da7dadf928336e34133d0bb46bccfdfdbba6fa2ff4aa36b59b25b17969
Date: Thu, 11 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660219252
