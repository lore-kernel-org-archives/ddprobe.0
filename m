Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126547B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 16:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655657999;
	h=To:Subject:From:Message-Id:Date;
	bh=0W3r5lPjA3NGX7gmmsdV1Uoawlyegpo1E6fjGuVisUA=;
	b=TGJbTqioOfw6tVewNbW2vosp/oYC9swGPKgkjrHgNoEMxQ5A2Z/aLlHEgAkgDnSv
	cARpZavP0mG76blwuLxHRus0t0D1ilRU0See5Zv2OYvdKxV3ucjsum0QfD9/ZRdROZ9
	72M/MoEOuwXXbP4Be/udSD5OIf880G7+vuwE54L0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655657999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0W3r5lPjA3NGX7gmmsdV1Uoawlyegpo1E6fjGuVisUA=;
	b=MAGeJN4fzf+muqPyyXjYW/lc4m7Ib4NKAyZx2V8Y21sTRdLy2zi8SDP6I+ODGbar
	phzoMlinhXaWVDIFphm2LSBgAzFqRYBN6rp8su9PojbWpgd8sUzj2wd8kuCYI/CsX4+
	aKNzLaEUZ8rQSpS5npo1lKhDdauG9ZUBMqPqpaf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ce82b86-7a931e7c-5652-47da-bf31-5c4040d1ebe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eabcb874249cf4ffc60bf995c8c2e5ba5ccc9267477d772ceb9774b2aaedd11c
Date: Sun, 19 Jun 2022 16:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655657999
