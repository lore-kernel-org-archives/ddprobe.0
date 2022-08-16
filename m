Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FBC3C0C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660649452;
	h=To:Subject:From:Message-Id:Date;
	bh=CBXe2/Q3rD2oo1dp5sJ43NweByWatCWxRYiSPqhWVYc=;
	b=WrGKVWkcPM3qN7tFe4YBUYzq9ebZ2BEWAH0XRuEm1C+0p6KbmPC7urT4bPFkcd58
	eiTC0QeuR5x4M8cyVX0Tk5vpOgeVCSVejcIUYeDY680MsxOlfB1UwsHfMOa+6j5x9ap
	Z/xZh7sWeClDuNxR8NZa5LIWs9+pGttSzvL3UoRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660649452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CBXe2/Q3rD2oo1dp5sJ43NweByWatCWxRYiSPqhWVYc=;
	b=ac+YHdcwUwNiJL7pz8CJYvQxtspmhrXyY6xucSr1YEsUbCS28el9jiABgRhCKoy1
	ELiFZ3PUcSKHR8WzoSsqWBXAqI+T7rA414/REKUmU44ICifQMnpZHiKAGCXo35Dw04O
	ZeXO73eTdjmGn5orPe3p+5AANT1w1F2wW1c1XCdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a66bb43c-2a0b7721-a4a3-4e2d-b1d9-2d4b8093b80a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc26813fcb97c6d2de0adfb285872d8050d7124b286bc55eecb3800c029c632f
Date: Tue, 16 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660649452
