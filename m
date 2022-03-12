Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8231D2F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647107785;
	h=To:Subject:From:Message-Id:Date;
	bh=p0PgcVwjoLqHAq5MsKi2QNpEc+f/gorEyhsQGFxROms=;
	b=VTRLWxCgaRuVLyf8Wt/HzFqOYWZyoiflJeFRZN/cYbpBSqVceg8wAPaORkmazZ0P
	U5d3I9+bp+dzbeo9BwVronHiux7BSMmTKZDRJbzej1tSm2pVc65oiTg5e3YSkRdFEEk
	9equyEw/h/Yb+tl50Ec5Lv8SQp3jaSKmhPLYcbj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647107785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p0PgcVwjoLqHAq5MsKi2QNpEc+f/gorEyhsQGFxROms=;
	b=J7beNPmk5hOYtsroHGtYKi45jRpwaGLc5whST3pX2lkK1Jiupzfv0r3eNKbou3lT
	/E1v0INs2IEOsatx16R8UzNYN0i79sSPiTn3fM+0g6POm/m4C2L1TMZh5dKnYttMMOM
	TbE9K/BPbyIq/MHILEGZ/vEOcVgmDyVtzyQOW8KM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f46401e-17424039-dafc-4eed-b4e8-012b4b44e53c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d61ee84d829b5436a9341389334e0eefa1b1ec6db5658a7cb395e2ba0f1cbbc0
Date: Sat, 12 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647107784
