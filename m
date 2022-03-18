Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5CB4C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647622884;
	h=To:Subject:From:Message-Id:Date;
	bh=fHnoJs4KjIZSBZPjqeOjXkqVqpq6lh8olUwLGnjDhQw=;
	b=jh3USyekr6jR44Uw4ZmwY4LiHnbNfokzbVT/DbIrlSnxKpC8dincSGJJzSRePqxR
	BEkEn4KdFY5rKtBopbkKtVQj6avWcjrj2Gk2moHNJ6K1QF6gSA3ZAnXeeTLn37nzzyk
	apH4AdssessrJknm65NDqi5H11ngydm38oxCROIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647622884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fHnoJs4KjIZSBZPjqeOjXkqVqpq6lh8olUwLGnjDhQw=;
	b=S5QR3XdN1RWxC/BCIlA2euRaiALYPEUd3Ix/9osT6TCBOJ9ENzSF62/ftb/XP/bI
	+NzTMEFZ8oW7fCx//9Ryj8fX/ZllsifnLlJxEL+VEOBEFbnUlVVPzYDTddjfv5N0Hls
	KTf1Bqk71Ln0XqxIdlk/9/HqHbA9NNOPrpQ1txVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dfa0d68-ee71ea80-8b0c-4387-9332-3608ab7db6a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01f73b4dc217897f4c03aae8f9d698a6242f3a413e945e12227e072afba0e125
Date: Fri, 18 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647622884
