Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3391D1C20
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659853252;
	h=To:Subject:From:Message-Id:Date;
	bh=JWstNOuMBHirN/ImtWic+i6WR22tTSYpIShLNwac36Y=;
	b=TOvOjVu0Duk4EWMFGHjtO15GjdgEZ4UiNJHeK/10E1ycJAGzJ9ES8FHCHwqjTvkT
	qUGdF6UizbrN7LGitZObIP3X6GyxxsZJySrkfENApqH8wvbTJ24m7QTcDrdNCCuAyYC
	7CE4icrF+BFIorledYIHaBJJ3fDUmzcvj8X2bdT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659853252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JWstNOuMBHirN/ImtWic+i6WR22tTSYpIShLNwac36Y=;
	b=PkBhbyMcGaTM8ijzzoWSSiN0dIqxYSUv9hDINK7wQBd5BhScaB0e5sjSYedf0BTz
	q9AFR4lPLp+xrVq0Zc81P388u4AL4mwWbvViRk6gH2Sps88ImrVtq68hsUiwbyFLZ0s
	quTWxEdog0jvCAlsFoqumNgjvWHCuQzKWIWTqqOU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276f6a7c8-18fbbc84-2b3f-4474-bdd7-40ab6ef782d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c570997528744c76ce1aa764ace0d5e29e2d7c049a68207e07a1b1a8262593a
Date: Sun, 7 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659853252
