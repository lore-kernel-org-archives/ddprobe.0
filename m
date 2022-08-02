Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF9C7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659403853;
	h=To:Subject:From:Message-Id:Date;
	bh=a+SgmZWBS1+4WuitKoL4cMvjVC/xQW0CY3W6lii3Ukg=;
	b=TALkvrMM99sGmqxJVEqZ3BfbUQv+cgmwB4cz+3mI7VL6IhXqZvbBIb1+3tSHazwg
	7d4gT6AYO01A7B77mXwyIaLFIHkZiys1IuZ78yzR1fjcheIGzUws4uwedlyz9/+uySW
	mZ/P4LuRuZo7KI8UexFGMGf5U/79y28ZZQQB0ae0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659403853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+SgmZWBS1+4WuitKoL4cMvjVC/xQW0CY3W6lii3Ukg=;
	b=b8SK7erQ1Vs8CXJIpjzjppu1FPgCNJP7mG63LJnL+YsRzojhYDyRGFxTwpjSpR7/
	bS21awdRN3Xw24TklQFjDTFaYoUiqGFK33VDaE1KF/vf1JCk0PWuByZ29lrURTlNtC+
	aG8zGWrUiWvJs3JuTTXy7kSmjWVDuSuosDhfSHGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c2d5b1b-50e42cc0-b256-40ab-9986-7d24cfbea9dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07bf9d0a56f9549df70a358ea7cf2c990cd6e097e11b98c10fd30a956cb9c632
Date: Tue, 2 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659403852
