Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391DB33CC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658167012;
	h=To:Subject:From:Message-Id:Date;
	bh=x1+mr8WVj6WA6+dh/GxzecL9ss2DjQlhIWIT4I0kEqk=;
	b=Rnx78ZUOpPu/N3Pvad7mAWOG69rPrdwT6nPWuzJMLAFwUga2Mk09WB90mu0W7HnB
	Zy1yerJsFQkLWdm0lGDQlgYiPcfuchBcR7aAML0t14OfjaYIszw7PERcbYao1h58Kz5
	epZ6TSL7mqRf1KJvt1bWzYPRn28iBMk73vWXUoeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658167012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x1+mr8WVj6WA6+dh/GxzecL9ss2DjQlhIWIT4I0kEqk=;
	b=YNQADnr/tukkmfxN1lREznEppFqCZghoinZs4K48ANbTQMaLOyyXWsvLrH7E08q/
	+K46Z05eS+hLG2/KG6Q+rgTDhy/ajpRGrgXcNu+szff/Zit3+aXyHVK1REjVx7ndYyd
	pQkERoeXBd5dDw4fzWAc6Q8BYyW5gsOHaFGPYJ1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821274abf2-dec8b0f2-af7a-41f5-b081-00eaa2f88e69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 606731024d6dce289e382a7a72303acf0920fb2b3ffbd979a63c5e3cb3808b4a
Date: Mon, 18 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658167012
