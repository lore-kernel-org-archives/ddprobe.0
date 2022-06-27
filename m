Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E832C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656332212;
	h=To:Subject:From:Message-Id:Date;
	bh=VU+yiHQgtgElnBbZB6Wl+CpOi6K5PqCrtOT4toGdfDY=;
	b=bB7LnjWJnHPdhlgA6J5oh7mQb6CqyGUKfI7XMqLqOmvayifkgvbHwHBf0EIuy9PG
	MwprfIypV89sf4udaWH2PKv9HwiwdcTUrYAfZ1HEYR6bjt7vqcv1kN43KMLvgbG0HvY
	A/mrLFglFlW+MluV6cbIMbPoy6OJjQWsOfV01bwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656332212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VU+yiHQgtgElnBbZB6Wl+CpOi6K5PqCrtOT4toGdfDY=;
	b=EsPQp68c05+KImm98Ft4WGMInyXQp5DjxhKONmTDeq0eJrkOvz678JtIFnAn0LiV
	A0fXQOVzS3XiuSkeb9ouk2DWDRDWS3nnWs0DuABOY5I6NdyZ5tEsnB7vxN9fQz62XyF
	TnZvrCNqbuh6DV/NUfGkRoz9/iXVA8moYrUEePXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a517d832-aff0c2a7-e0fe-4538-bf61-730f015ff62d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48abaad362211d0c0c9681bbd84c6ef6a6d809a4d003136b588a24bcedc98124
Date: Mon, 27 Jun 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656332212
