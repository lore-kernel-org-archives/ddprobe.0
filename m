Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7427B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661174453;
	h=To:Subject:From:Message-Id:Date;
	bh=ss0dRHVc7UQKJ5Xk41/e0c7kcgIlWec2AD3tTC8RHP8=;
	b=SCyOcUNBHrYqW2RXC6XvmhphguDUStPXlEqdvYO2fhX9lCnoUuT+eTeHfVI7mGI1
	x83jPDybdmUBukI5vlc79kgVnO7XsdhRrzhsElUy9RY5z8y4j8QmkATuVDgPCEaO2mt
	i7FwdY838YddDejSSjdfrsOmU0Esl6v86a8hnRFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661174453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ss0dRHVc7UQKJ5Xk41/e0c7kcgIlWec2AD3tTC8RHP8=;
	b=IzwCBLlaNf72syfYJYFVLMbS4rlu1MaOgy0xQ1NS2OsDsIOaQQfzhC8MfIUR+fzz
	f5iNXh3BG07Kcekr8PvbO9e3JDjg3ihCBbdbycaQp1lps3l0o/YMqJ5yPpOhgCl10B6
	z3Jqjx9+gO+gerMMIS9p6Mf9jZjA6hG1BqB9S09Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5b691cb-a097d325-c7ef-4910-b8b5-3caffc489b61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6a462aa714b162aed2d14f2336dcb8700844075a3020e6ad9a39483d19cdb22
Date: Mon, 22 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661174452
