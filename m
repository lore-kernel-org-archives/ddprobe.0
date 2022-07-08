Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF487A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657271212;
	h=To:Subject:From:Message-Id:Date;
	bh=/pm3ISqYfO7jyJktZhBKXjwwEvfjKolEeYH0FFHZDGI=;
	b=NzPtMkEL3+odWxG8yIsu56bYZGgtYrGGxnsTONUGzzq451XHXLfgHAZWmPuBzoUS
	gOOz1NjlD6QCHP1afRz+Gr5NdV0/9bJd8Wh5LXH74CtT7vXEFeu4zgcHt1a9l3PWU/k
	I+HncNeS7MWU/+BcAmmU8jhFlp8IUL3pQyLeIPJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657271212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/pm3ISqYfO7jyJktZhBKXjwwEvfjKolEeYH0FFHZDGI=;
	b=ZfQ8mTSQK5lCSO74yrZ/7Ac2CXm9XTWHHY3aF37vFWCW7je8Mwz6j2xKHJb6jbmm
	aU6pGcdnlOU7gT5/cEGdJZWBR4EQf2TbtcNGH0mwifySMcaEL8A0oDa+dmegVpWzUpH
	oCzfgPq5rAl0qHk1LOsdGCj0ZU3KkB67ag5A/vK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd0fd916-00c7c79f-38d4-44a4-84a1-e731f5cb8145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f1f250ff92f7bcb8dd7937532b7f7fd21f67e176461212e34f10e0f8602e0a6
Date: Fri, 8 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657271212
