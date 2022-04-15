Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1259933F4
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 23:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650065158;
	h=To:Subject:From:Message-Id:Date;
	bh=BIPf19UqyvdGNdklg/hz9l7KRRWd0eSCogq0sl4tp1c=;
	b=ft3uPeR9Lr7mThD7D6Hkmi6v+UjCX3RyLk4nZUdPEgi5RQ8QjzlA1imGX1VZWEKf
	++YBnwZP2WOfUcLANIJHyHatE6GtH+6oLucECJh40sICzrpJ0uzNy+7RwkwQvunTYS9
	jCJ2Iq771MoNEvyHl9CByp37oh75HQ0AAL6YA5JY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650065158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BIPf19UqyvdGNdklg/hz9l7KRRWd0eSCogq0sl4tp1c=;
	b=Bam1JenahrtW8hjFgcLP1QOni/FCYEl5pqE/wFGhlU1OF9HxL1IfiuILBBgefgpC
	wtqLIDsFcLZdkRfwFnnqAp5qAVAVwG4IvXuKoRnqksLgdLlxAvZSY2INfvkQ1G2cCxL
	XQsU4J01/0lOC8+JnRIuJOJUOWLLY6rvj0B/WZFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f8c3097-bf163aa8-4e41-43a7-8663-9c5e5fa6ab81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a53677c3d698b60357877bbe5ad418b3337809545c341601de52032a7ddf0e7
Date: Fri, 15 Apr 2022 23:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650065158
