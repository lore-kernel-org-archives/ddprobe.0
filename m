Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712A97F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659397252;
	h=To:Subject:From:Message-Id:Date;
	bh=8vjQTHrP6I7mp4rU6VR4fgU9cj/lI0X/t7katm9k9Zc=;
	b=CZ4w32/fbU1hNBSOm2p+9/ygQVBAKC20xDdHW78Sk0+zSIVPKk0XbXcWIySQiInm
	Erc47lctVtvHoLTMf03TpG15QicI7Etfz5BG7t9i6WT+fE6r1O25Xn2exbO2jtU2LkJ
	9K6swc79wPKyAdIG6u+y93w0LHXQAHP1m3KiegU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659397252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8vjQTHrP6I7mp4rU6VR4fgU9cj/lI0X/t7katm9k9Zc=;
	b=h8z/6CPH48BCZVmDpCc2AGRQWLyJKdCXFVHAx/JrbqMriG7qf22vg2K1I1YdDGSY
	prGfjKGgdkMfpHqDP6cJVEbW051lBdv8JN9b9s//fMZxHbZ1zVXtntGUMZzFfUh1Ov0
	kVqEstPP6dLqrMO6ZEn/tbQVdGD+nDE9xmE4H/N0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825bc8a5f1-1297d8aa-5143-449f-9190-3ee50f712f81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b5141e9e7a4feefb0515e69ac8c0705496b26f4af4d56101ff6ae3b4079ca05
Date: Mon, 1 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659397252
