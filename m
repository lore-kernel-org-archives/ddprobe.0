Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B1B23C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7EDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668495654;
	bh=jXd1idr1Z+PMuKj2L71Stjz2KgJl/V6CUdOZ8D1T0hk=;
	h=To:Subject:From:Date:From;
	b=IUkjGS1r7NJSsJKW/y6JAk38w5OlKKdbnlUg2nLQ1bVrUsQLr1516iQNwkXzm78jd
	 sQSXLTG2aJUgupf1yyPUzAGV2rzxC8T/oe6c4xzTIcVcHQTvfrnAQ5p5Ib6QPgPMOl
	 A2RFWDi6spC5oSdqN2mlgBZgoB1GpY4v0BCTmjjzJinJYxSXLklogs1LBMQoXKbTsI
	 Kd72NqVwsab+9/cXkqQLL+p8mUZ5tPMC8V5LcTzy4oQiXqgXkXMTINUZ6ugc7LpOnE
	 mf5JeDB4OKIXfHYZQRjeumDB/29ZF7gSZAHSurH+WRSFF/878UD5CWOBHPiyr6GynU
	 97sGI+qXhskUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A52C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849565439.8975.16194500828777103025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c525d1d4ce323d9f8833aefb2fa18cfb0ac1f16f03af43b5ba6ff7fa7f748f81
Date: Tue, 15 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668495654
