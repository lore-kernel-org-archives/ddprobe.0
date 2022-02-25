Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA07B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645777584;
	h=To:Subject:From:Message-Id:Date;
	bh=TXX4HNWwne6SBvQGzQRbFKiAugG8YdmgWApbA4xIgdw=;
	b=cYPWnu3e6NVIHgUFzyiL202mIdqiAUJCUE796ykZuMMMiIlBxQpCQfxeFB9z0IxS
	JHC88ev+yihYlWKOdCD1DVJXHqBY4HlhfJ2+ELWrWme8zs1aGHrSzx06Y7n+2nRsyyy
	YyEjR6BWgPwUMy5X+JGkghah+ARtm26cG0Ifwm6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645777584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TXX4HNWwne6SBvQGzQRbFKiAugG8YdmgWApbA4xIgdw=;
	b=W0odBEB/CqvN3OL+v7Ls9+3riUt0gJUz2Gx97skaoVAkiz0xQFvqpR8I0NRRk4xw
	p5MztlupF0kJ15HsZsNYgikBlbKZ7FeVHdE/uJ3FMJZCvhyHr/zdexs4YwZ1CK81fwF
	JRb9K5C0Uzd7Rl8ecEZpwdAEUY+QlaZIFVWpbWeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ffd027e-4a8da8c4-e414-4df1-94ba-0b8a0fb23c74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8fb7ecc9b081172a811d06d2573b2bb611d00b1e8558fb97fecec2417635b3b
Date: Fri, 25 Feb 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645777584
