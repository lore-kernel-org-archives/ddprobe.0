Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132127F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 10:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654942379;
	h=To:Subject:From:Message-Id:Date;
	bh=a+x2W/k0932DZjUbHlSHZi5j/pdfK0feNC0PlnHUkWQ=;
	b=T1n+8HU4M/0Q3lJKNDmLWGKUdOcRmD+R1YuyeYavyAA78s//5hs6+bwuKCD5p9Df
	U9gsiepY4BTc0NR6QJT4rPKYYuYvpzu91vTwn4QlSP8t2f8//f1CVrIIfSwM81Mwedz
	oasbx634eBUHW04mSgYQUfIaIqEhghE4dAjcV6y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654942379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+x2W/k0932DZjUbHlSHZi5j/pdfK0feNC0PlnHUkWQ=;
	b=etsPHizql80AQ5ImBvDadCZpkaEZkjms9FGeJshjNp6gc2avRb2aTf8ADn66OIX8
	6KxtqFqqTxl4D1enRPEUXn1uiPY2uKU/06cH288mkfb4JUOyEATlzMEu1fjhRqNoIyz
	6TlpmcN+KOQwp2q7VdvNAMlGCe11qU/HvfygJ3ss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815240acff-cbc81d3c-03d3-42ca-9f2a-e87910155ffe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a363993583fe6ee1645cd767d9574a42e2b539c3daff08c6b3a304d4d008ab3c
Date: Sat, 11 Jun 2022 10:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654942379
