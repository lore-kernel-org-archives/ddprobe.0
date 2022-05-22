Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E6B20E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 03:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653189959;
	h=To:Subject:From:Message-Id:Date;
	bh=eM1gJW9TervbBjOoD36PI3TX66KXIPUh5ffHkFe7Oa0=;
	b=dewg3pIqWGmNq0PojYRsAUkD3im3P+AJgf51+bl8LgGGlteExCRufvTY9XD8N1uH
	2rNsn2PcFobgiV+TAr6hKSdTq09tLxz8LBU3L1+D2eo1onAUwuTN+/3ppZILlS2Ld5N
	U+ACu8+xMD2eScblzLp0zL6wNWReur1TtTFQgMb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653189959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eM1gJW9TervbBjOoD36PI3TX66KXIPUh5ffHkFe7Oa0=;
	b=khzPW/6BPUr3oBNDM5Hz2EGGGZQutQpPZect+K6kk/vEKNLw5fe7oHE/SxeQ2p75
	bxBXJkGvehEbAg1XVi/Vyeyz0eOU/TYKXuUdYcu+qQ1mFLI5DSW7risMAHsIqTIybu6
	Vob3xfYmaYA3k18FzNweUYi/FMfo7x9+hSgFfvz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9ccde7d-84fef392-aa83-44f6-851d-ecb0bd5aed5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55192ea59722c17b89c16f439f73b04ffb0930f2e07608111987c08865368116
Date: Sun, 22 May 2022 03:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653189959
