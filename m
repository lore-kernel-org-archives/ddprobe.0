Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB9810E6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658974852;
	h=To:Subject:From:Message-Id:Date;
	bh=882WMaf67w2KkikBD4WgrvQYFvHPoY256ZYyv28TK1c=;
	b=Yo0Vb+6/CtkERH9WrMwAd88b8FkA+/842oNksIdVccrBdVVM3N4L1B+EFtvtmHG3
	net+hFc2Wj3JT00Kacs/XMUAT8JVYDUAGShiIYoHewIoz6Uy/f4ntOskWtFYCrYFVjs
	z9Vy91shSFzGbxBZnaDl5Of5FpAxiTHNAHkkj7HI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658974852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=882WMaf67w2KkikBD4WgrvQYFvHPoY256ZYyv28TK1c=;
	b=i/kSDaJBw4HlpJDY+4dyBReHPjHlFrFBgyQd4BMWwYJ2tdytzD7daJkq0NL5wloH
	EKyrNXOsdQmjjiVb+SyEIck/pQ7n+ie0NLUOusk2sklHgH19vUCt5UjsoGoPOZHonWN
	uGWYk2cjQVGWGhQ8Hr2z90KgTadUap9tJYabYXck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182429b55b6-cef64feb-ebcb-4232-a17b-b294e6063225-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d798dbf72b45bd97471a95745825cd83e2c58063a9e6be780f61d97c908aea5
Date: Thu, 28 Jul 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658974852
