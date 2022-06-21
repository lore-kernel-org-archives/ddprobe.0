Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4810EA20
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 03:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655780399;
	h=To:Subject:From:Message-Id:Date;
	bh=i5n7/Zrr4YBzU9HRZwRDIVXhdUNQXM8bDiDmrF8VRL4=;
	b=OhT/UzBIEqmghlGXEn5itZaqBC+w1HBGh240cnrcExnG8ri1t1v+y4r6jDqkiXzX
	+BDvSiF/qtwvpu9Qw6izc3qEt9kja/OrXTz/qAHWMVDQ33wMYLq8Olp9kCwTbDyXVDw
	VjRsAcpAkhbXoNLp+cQGQcT5CDHYwc52HaqhqPj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655780399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i5n7/Zrr4YBzU9HRZwRDIVXhdUNQXM8bDiDmrF8VRL4=;
	b=WjBF991GM6z6blPLtd/BvJmLMawDi3tZFUTZuwBFi+jupz6n+9jUYGq5pMLe5/VH
	Cui8hWJUvgUGVgtposABFizfz6aWIjRRvd1yl9V/v5q0SC4FtTREhqCNG1NaoiFbiyH
	7k+1pXi0JuJ3885Qt1gfn3ifALwauKC+pcwIptMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818433d8b8-a6216e6c-df6f-4b70-83b5-f4e1e0b6e4c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4baebadc5c670cf6850207cb4f14d73b050cba472212d08412e0b2f64952ded2
Date: Tue, 21 Jun 2022 02:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655780399
