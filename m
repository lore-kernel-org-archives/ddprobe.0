Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D8F7F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652603879;
	h=To:Subject:From:Message-Id:Date;
	bh=E2Y1xMfsI+/ikZCy3BgDb32ZQYpsOyNvvnGuYzaOR2E=;
	b=UffoZMLRISd9LOZFJQ23NvfX1BPPwW1dmGOMFOM6EIvMjff0U6GS2myjlpRMAoT6
	I3knxJGTUEwwyancxK0v4ZCO2Y/9jtrWo4pBuzypAyJNpPWapR5tgbAcoLX6xCCEnN6
	43qgGO1ZZYpmy0zyy7PBFCqDPaV0tIptLGV2PpWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652603879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2Y1xMfsI+/ikZCy3BgDb32ZQYpsOyNvvnGuYzaOR2E=;
	b=IFFHdNhw4vGY2IgXnELstJeIjMi54w2xHP5gONzcNqu/i1ZsNfhDTbqdHWpN6XsR
	k1BtzIH0i8ZjGSbcI3nK7SdOnuiM9+IJMU/e4AXiCjSpy/7bsu46BsTUndgMoUZNYGe
	s2Y7Xet6IAfdbSpnDDFuW2unrD1Nl4j/wCsy0/LI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6ddff7c-807d52f6-fd92-4410-9824-9523de83da66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 914c401af6c555b7728c97830897293cbcd6ae5770f3b33019f2341e46cdd44b
Date: Sun, 15 May 2022 08:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652603879
