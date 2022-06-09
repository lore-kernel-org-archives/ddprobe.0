Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024127C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 01:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654739519;
	h=To:Subject:From:Message-Id:Date;
	bh=vslxbHujqr09tPbV8SuvUFXB2fsyYQW4dgmxiDmNmH0=;
	b=b/UEeSu50yX3tTyinpCJHiJV5piqMi+CXFdU8+/N9KGVZcdYzpoarPDshavIPm/D
	CcURcEse4oKM85wtllChzCH8cJINWhG/ArrubYduS3bgW9AXO2tCoUk0TKdeczI8V3y
	BUjzm3KjWfo7ZOpZxKWzZC9zmTWg1M8dOUTGVK4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654739519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vslxbHujqr09tPbV8SuvUFXB2fsyYQW4dgmxiDmNmH0=;
	b=Utth0lI1XdfEceZaM5SeknjgoLf++oQptVTn7suUc1dCZIhmXPkX/G1zjRxN6b2r
	HnYyKmXmpKCvmeHiwVRpcFHfm7AD0QoYZcml/rrGdFuhbnREjwhDuQNcqHbvvW+hZdK
	7yOtnGAtgzmXXpjsrLgo1r6Ty6L8qNqSl5URQruI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814629470c-50b88f1f-7f0c-48c3-afbe-a9fc091bb418-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9ea5000a6f65c3b803184aeafaf386ed063c5d3896fd292c74221bf3d75a843
Date: Thu, 9 Jun 2022 01:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654739519
