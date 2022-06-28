Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477FD7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656442012;
	h=To:Subject:From:Message-Id:Date;
	bh=DyO6lxt9Zg7ctTLR4Sxep2hOp+w3wdgYhPZupzW/RSA=;
	b=e8mpYwxvS74tyTQU3f4Ix5125S5lssNMHxnjqyphG5IzUAXf7XwwjNOnstPhS2J8
	ETmY09WN9oHvcAbFFHIalT9ctzvZU4exzCt9UOqJY8y3CF6qQJj49LR1bXK4saleC3D
	kr7ND36KXEVeALdhXUtDo22prluZ+ieG9RCShnW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656442012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DyO6lxt9Zg7ctTLR4Sxep2hOp+w3wdgYhPZupzW/RSA=;
	b=Nb2aF+pvrNhXKbqzv7NX0FaylChnHDT0WFKBR8IVdskrC9/1cX1rs8Ube4orXN6p
	9X/LpTdqTpYD+vkM+m1NFI9/7FMuMgaVP/8CMTm8G0Xal1i/JsrPEnIa081o/iTTmE2
	0Hz9W98d8/0Iof8/fnBxbUiCH4a2gcXqOm3XReR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aba342d5-5c675567-2278-47a9-a298-4052a562c47f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82e03a0955e176b4cb90497a6ec4a6c9bc72e22a2d694e779848158ddf630761
Date: Tue, 28 Jun 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656442012
