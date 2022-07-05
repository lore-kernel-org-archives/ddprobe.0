Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030027C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657036612;
	h=To:Subject:From:Message-Id:Date;
	bh=3JXnnsqvdUjlx4aXjMjnrnJpvfagRzdWKBiXroOQt54=;
	b=lBlS6pWGPUF06GoSL6gJYNTBY9VTMr04FSKZoEA4N0APe7qEOucsZAJUpp8WPzBy
	gcyoqKKkOpx2wxJeRZzrUpISiuU8yEKB25pAOH3Z/Kd5dw0Wh+mZxPwYKZijP5Bp1f8
	FqLPfgY+AFJTGUYhV+11sYNtlgliwXPaS9FzH8Qg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657036612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3JXnnsqvdUjlx4aXjMjnrnJpvfagRzdWKBiXroOQt54=;
	b=GMWrSnuWPjGSwGpZ8xmtWJGQsNL5tVsGqeLz/kbdMd9bRyeJKjWoOOK6oO0crYWC
	g3CsdN/LqKvJFL1JpYikcfDvmCXFiYwSPuPotgc2npVs8CwF3mCcqn0KUq4DxqJRAN+
	zQ//R7w/ws0ZIQFcxzsKS5ITVdAfC+74coQotk6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf14228e-82347031-8b56-4f24-ab64-0c3212f69e48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 898469d3885f6d01e58ae38eace1b4e165409fb98807a4b12623219a8144cf3f
Date: Tue, 5 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657036612
