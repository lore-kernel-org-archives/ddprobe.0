Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D34C7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657914412;
	h=To:Subject:From:Message-Id:Date;
	bh=wsrIYj84+lepjW/HrB7irFILTE+Jl+7ueUxJKTa1aIQ=;
	b=Q6XpeAonT69GJAoaak+XDhvym/S0U45bUXmfXZzHT8R9IVCT22+cvHxLdZtCSre6
	3nrs3yKCYzyxdneUQnhcHnJ5a7crnPUKLIXwpfhfaqFC055d2SuCG3BNSXvnxHJS5WE
	4vySoJX+pLiWV+/nGed1bcV/VI9BX3u5L0myTC9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657914412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wsrIYj84+lepjW/HrB7irFILTE+Jl+7ueUxJKTa1aIQ=;
	b=XbwhuGSjqERTJkI+6mHfXkJkNDCnEmpP5sJZ0NZuu2xvFH3Ns6E64NfoDoZxndrd
	OnFxrUC5UBJ1+kyAriitwWpDbEzORuacZcLwcIxyqt/bFwkGe/n+yTD0P3+pXJSpxLs
	NhZpMMgi5STgBGZPf28Zlzp8DaD9foq0no+CbLFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203664d2f-8bd95657-46d1-4ca5-af3d-3b75a0de3721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f07bb3b8585ce468aa93f893e605bfbec840a6ed76d135b3f075ef09851ea6b
Date: Fri, 15 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657914412
