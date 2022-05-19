Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E94A23CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 09:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652951879;
	h=To:Subject:From:Message-Id:Date;
	bh=lbzmLRR3XeIRRVmo3LCH7wHuPEVFZbaFRBzs5xJSB9I=;
	b=FQTFoTIvepQy/r6c30Jm5hx01r+5gyBiVhHs2fsKZmZUqHY/2mxLfZY77QtYBTYn
	ObWQXkL9YVJkCttmDvit8JxPvjgVgQTOEQ6hUBRbmtNk0KJ51CeCBs4F2QUiIq+IfkI
	ha8aJj+VEt/K3ZwOpexkqs7gPmgdbLS6fw1TWh6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652951879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lbzmLRR3XeIRRVmo3LCH7wHuPEVFZbaFRBzs5xJSB9I=;
	b=RE7hVA81rPnDxtRSaqBWpWfQNq5bPZt9XbS85CBwGbCsiiH4RhLXtyLkaJ8lU/NH
	k4ydpiaRH8KP2o4GKyZnM4ef+Rdd1Q6lJ+yqgQiZV97/2IyAhQhLLTolmMjhiBEKZyU
	yZ9rypnQHqrmxcESftB8oVrjWc3tQT4RxjlOX0m0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db9c0e5a-2dbfc74b-156f-430a-a338-26b25ddc46e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef0e787851599fafeb26196868531f4eecc129632abb5bce69d23c03455e7bab
Date: Thu, 19 May 2022 09:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652951879
