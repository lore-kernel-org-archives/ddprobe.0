Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B137B1FA0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 16:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652112419;
	h=To:Subject:From:Message-Id:Date;
	bh=DosLQAVqKOQH8ZMEIdb0GwfsMjQYfl0l+ajyF+OQjXc=;
	b=kUR+8aHruz+ycCTKNH0eW94WJY5pjR9pWyyw/+lVE94+P1L8Byg0tYIT9Zo5GuIw
	3BJh7IRsEfSrhRf1oX419pc/N2gh8na7dVnujPLZoquaSiwDAvUJ+VSAYJ5oF3cRC4t
	dXffXTYMHsWTyHJ3/2z/Ol0x4T00ZCC/kC5SIafc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652112419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DosLQAVqKOQH8ZMEIdb0GwfsMjQYfl0l+ajyF+OQjXc=;
	b=C8shgSyF1ANniR9axclQsK3nQ1laUYw9Rp5UtFlf2DOvgXU91fdvOw1WjpebvG8k
	51S0WY9eq5Jrm/aN2gSNQYwawnl/pNM8RUGQ65C5CORWUiiO2CkzMR9tPYjzU8XjwhJ
	fD+u2uRN/5AIKdOJsgLmp4VvheWIR2QjlX68e+f8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a992e71f-b80fb356-7832-45ea-aa33-277e3ada528b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26ee6f225fe9b4ab9eaf2933c785698ace997e3eafc2b48a44b3a5c6bb72dc43
Date: Mon, 9 May 2022 16:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652112418
