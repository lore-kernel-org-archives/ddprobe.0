Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6929C363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 08:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651737778;
	h=To:Subject:From:Message-Id:Date;
	bh=xpvyVsRVH4ilk/2DuCZR+F05paonVrsMv6fZVk5gnow=;
	b=KOtGIN7+ONuSucsDznB9d+IgtBm9yb0LhXDrkYAvlRLtiemhLRfwEuqvdGR3N6x7
	jCgnUgEBvP286lmkFsOUGNkPc3xtgF9rC0vcdG9XTKRg3LYFZbGNPs/SSAw8/sfBeNx
	iIV6zdVdQaj8WpwkeZn0pbje3GZrbInla2g6bl40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651737778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xpvyVsRVH4ilk/2DuCZR+F05paonVrsMv6fZVk5gnow=;
	b=WhLgpdK7Z13T/90NkpzlgTW/enen2RshCKRexv7uF5gXuGgG8x8Rz+gUVThY+kZH
	mP7PaO1KGsyA6TX6bH/Ywl772K07DAs9FZ3s+XcoeYoK06vyv+znDe5dn/Yr3y322Fl
	E0RBb8OxZQx+V+hApNy1icafV623uwfNhRozIOlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180933e581e-878a5491-7be5-43ac-b31d-e3b1a4b2597b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c1fe20b456c67a83236fc4f3c49228eb1007485141368671a9d5ac62203f434
Date: Thu, 5 May 2022 08:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651737778
