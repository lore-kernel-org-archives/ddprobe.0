Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646F44405
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660827052;
	h=To:Subject:From:Message-Id:Date;
	bh=bJ7LyPpbGtA4htAhQ1PRRLZBOCuhMpL3ywCKG2lcVk8=;
	b=NIR99zfW2ciOGHK3KJYKEXI7J5TKc5Zx9vx4UlIpDiTL+WqnbUy9SsuiWJulgOv5
	1e0MfK7r1TIL4KrIeaCjx3obxgcm4AoMg4oe1bW/uQG1R22KzBFvw57ik2qHOADuceG
	J9RQHky6xKO1txdHVvkPIgjv5Iw2S8YdbNq15Q3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660827052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bJ7LyPpbGtA4htAhQ1PRRLZBOCuhMpL3ywCKG2lcVk8=;
	b=QWcM0XUZKM8/U5PWNvCLUkDR4OVFrqJxAYopCYy6mz61EK48+yVTVrD1Br9y0kDd
	xsQuU+X+kCzx1WdAJZb9s0bs6X3NYageF+szZlqa2hZ/khzpC9DODCWl7f5fcoytkPP
	ruB2BaEPb/em2HRTUWGuSiX0x/eSLybWG3ocHMEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b101aa3d-a96d18e6-e011-4fbb-b7d3-1e5e1fc72776-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1cd89ff66bde398bfd02220054606eb0760ec41f07a789c110172e379235d92
Date: Thu, 18 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660827052
