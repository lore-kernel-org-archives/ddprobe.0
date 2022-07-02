Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577F31363
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656730612;
	h=To:Subject:From:Message-Id:Date;
	bh=TsjTXfIcVJALENneCcOlUY6QjJ/XKf9bAoui8ECbgp8=;
	b=duqLi9s65yxYPomzbkhnDs3TakUmVhSZeTUEEjcQuVEjkjEhDdo8vsmMphjyFg3c
	l8mwOnzIRq+k9huHd9G8S+VHsAeqGhhrPXpJ45glYsNPOIRjzStw6oku0EPW58QPIZz
	loqri2t/jjjgccf4W4CsypR8gSDowqhZInO2PXuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656730612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TsjTXfIcVJALENneCcOlUY6QjJ/XKf9bAoui8ECbgp8=;
	b=f6dEcoeqdv+cGvyi2I8MkmxW8Jpok4EqbvZltGBSiXK5DsJ0h2ZOSxgna5+/9ZNw
	9tllDTmW9k6xz2bgBwAf+GUgbImEr5O/M7HJMilQeTMrvvBCkI7g7FeZTv6s7LA5C/n
	3BqLXPGYs1E11wzm7YHBGQ9zv5pg3wyzPF4LTrwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bcd6f27c-89237f1a-bee6-41b8-ac0a-ffa75d13463f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d5e3da81237de2eb819b7c388b439b158b0b727d222f6cb6502a2450446c771
Date: Sat, 2 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656730612
