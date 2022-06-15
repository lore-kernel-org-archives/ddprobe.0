Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2777A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 11:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655293379;
	h=To:Subject:From:Message-Id:Date;
	bh=4Cm5Ly5K2G5JfLKGebI4YbRjJS7SsK/FE16E5cYhVCM=;
	b=QuhJ5fnFUY0F1go7Y2FXn2zGk4MNMbDJmtUrWO169Ia6ELNhKDiX0FzTbiJaBOjv
	wO1YMqCKKWzdF20xxKLZ7tUGknIQ3BCiwCA4clwsW5b00NkW+neX4mYrUguavwnhr5K
	HKYmy6OfxIkGBMTnxRZeSO1MovlmYN50pIPY2Fs0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655293379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Cm5Ly5K2G5JfLKGebI4YbRjJS7SsK/FE16E5cYhVCM=;
	b=FeymA+pfhSd9qyECVZXfSubdSBtpl1R0HsKjda9a1ci8sPvIbDmDfARCtmITB8DU
	VZuGyX3ZWAKGaNf+l5rVuFri9cmJq3yXa41dO4P8nn0x6WpRV4gwhsmDa39I8UOduN1
	aDNkO8BKhHhVuBJ6xm5K/hLPlDcQG99rw2iYbf7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181672c82da-9315ed19-4e02-4101-9fd2-fd5be4650e6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a43ca0ba3779e5dcc586dd4a7b354ace185a8dbf2ffa6c1d5f5d7da30168131
Date: Wed, 15 Jun 2022 11:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655293379
