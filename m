Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EC8179
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 02:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654742579;
	h=To:Subject:From:Message-Id:Date;
	bh=cjmNFbtqiYotdC7z7Apbkjkw0NRm4GjDCXBm7eFWaK0=;
	b=K0gCbU5jKgM9NkHQRBaJ07ZUW7Cfd5L5aGGSJNQifWDHEf+HdY1Mvka7FziIPgwI
	aaVvdjnjPtLIxs+/pXmrQ+ANOkI/G5WtMD1EReafHRdLjhok2oGCZfCwUhT3SzAu9rm
	ybzT4nIhgtz4nunH2/LzSxcMVOmimGfubLYp1qu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654742579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cjmNFbtqiYotdC7z7Apbkjkw0NRm4GjDCXBm7eFWaK0=;
	b=EB4H7AsZLuVz/GIACHmS67lzhr2VKfqB/hCgHie/xJ/jY8bJqwjYgs3a5XtyPNm6
	ONrZYZyxzzl66CUSkoa3Y6MPgHIRvWaOhw4AAHPeQVtvNrFefBpGL/KSFUm8eBmsHRh
	cKTBmDBxQYu50a2b7i7qX71T5UbGmCw5gyLYst9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814657f82a-976fea34-f8ec-4c30-bc4b-852fb33a0127-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e3fa5e9f4795493171b4f3c1321cad3d1f0e4ccac8d3965fd7b5db9a21e1279
Date: Thu, 9 Jun 2022 02:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654742579
