Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762FA33CC
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657300612;
	h=To:Subject:From:Message-Id:Date;
	bh=DYet4i/J7e9QiToxxjAKDKEpp2W1CuD5nPuSq8GQd7c=;
	b=CuPeixcq0vA8cjinzP0DUlqWBaXfGLHyg56X83gGEJ92us9oYMu8hf5r5ksBhILh
	y05zoKyXmnQUrEM6P57abQVqakEQt28xb6HQu+lxc5vtzBRsmdBtc5lyyKZzv9RKSsJ
	zr69e3iKkxTE4lEYsI4qynL1fYcC+oi9mZZ66QKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657300612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DYet4i/J7e9QiToxxjAKDKEpp2W1CuD5nPuSq8GQd7c=;
	b=LnKmM+caJPJq3r03EBb0vhOZ3Y2BZn9we2r+R/6WdV/RsLm9pRmQ4PKKOPc2/xi/
	Zns35a7NtNPPoRFXM4XUfu/uYKfRwsoTwCrfU2S9ZUUQuVbGRXmMvF4/hieFRWYkFFJ
	L7ItFtg1l4PlW10/lPAbljJDm38wnIm90Aqj0Vx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ded074fe-4a4e6056-428f-421d-a52e-ac658a5a1734-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fa48b84305df0f63fa6dc0c66fd12db53621146e4160ea5c3e3db60590d4e9f
Date: Fri, 8 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657300612
