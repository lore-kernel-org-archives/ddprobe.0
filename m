Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C031104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657445812;
	h=To:Subject:From:Message-Id:Date;
	bh=NzaJlA8XpYudoxqqGuT76DgxU0QZnG0d0rFLKxQlgto=;
	b=V9b1lYhiidfdLqdckzFYgnDYBW3072FKMOGM2xyRZpPfJTW/QmMRq+plLy/vDA+b
	O6rQ4Jngv/gVLwJcGffQgwLs6QsiPgzFfZfqfZW/0ROklwwTT3gXjzTMl5aP+m4+Kub
	pqBZzUn0E815jmn2JvggTozwt5/Bd7/7pGJDKCnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657445812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NzaJlA8XpYudoxqqGuT76DgxU0QZnG0d0rFLKxQlgto=;
	b=EW/ytv7fjLju4KH+PZKYJjv9JIqALfFTycEPXxofNrTvoaO1lb7R8xjnlY+RcqiU
	5y0x4Pq1MZgaOy+180SkUOqgaQywm7+ZZhslgYdHyBIb7Zn47kKQskfij3EvXXxHPPJ
	E8uQL4ufWLqJKJAJ+MAYRu54dnYm+R3slzhV7914=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e778085a-de38d053-fdf4-4d88-a9f5-dda89cfb563a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae8ea826f2484be4ecb517247f6910ebfa14bb9649f4538b6986444c2cf0e513
Date: Sun, 10 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657445812
