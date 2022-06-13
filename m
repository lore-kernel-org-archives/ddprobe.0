Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6C17C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 18:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655145299;
	h=To:Subject:From:Message-Id:Date;
	bh=hLnqCJwkk2IzrtZQxqmnZ44kWXy5nsKolcls+T4hLzQ=;
	b=SaHXiDr/yIEen2eoCXP/SXe3YJWcCzCWAWbk0V2rZdBE8jDhAnqStLnzfRyfteHr
	ki2XsvYQB4ryr76/iWXfh8iCI+uMGNQuUm8M6DJBjMEDJlUqJ7eVw6RbQk/vn1LUKOl
	aZDUa/g350OEZvVdBmmBC3MkvnmXGj6xflOrkhko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655145299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hLnqCJwkk2IzrtZQxqmnZ44kWXy5nsKolcls+T4hLzQ=;
	b=SWt1czkNr5hYSTwtPDoTXcP4sxZzZioLONaGO+VCfov1yjH7uoRGtZ04XvG4OQUa
	tVukJASoaEzVtzs1IR80q2LZBvY5f1X+an1SU2+9hk/A8I/Z9Mfdbr3ItCJ0nxb9e5u
	m+fXPfvnD/cOU3yjdLYxKv4bxSGWZTwI2A+qFAZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e58fd48-abd6dc36-b9b8-48bc-86ad-7b21cd190fa5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1731714ee49ce6c4b881803dba3b9c25408a054196a88bc8ebe17f67411fc26
Date: Mon, 13 Jun 2022 18:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655145299
