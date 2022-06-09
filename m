Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260737A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 06:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654755959;
	h=To:Subject:From:Message-Id:Date;
	bh=fDec37dDzydO+5e1eJhtKbbG46ZCW6kQig7G4HpnfP4=;
	b=iPFb8BEU7KtMaduI3n9o4XTzlNdDvduc2aTEycMv20SQxGNuy+GYx0a3heH4DHbh
	+A8xQi/oME+cxK8yYKODKnuIyjAcM13knjWFRWdhstwZU4Jfpa7L2IQRolYEdiNRhGP
	LTdtpI1ZaKFuBxQ5JeDn4gfbzhkTwoAreZv86m3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654755959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fDec37dDzydO+5e1eJhtKbbG46ZCW6kQig7G4HpnfP4=;
	b=AXVr6Q7hVGHYos/nPc0A49I1K4mI2U1qUxrboulm0gk/+QjQs2SJTXTM8Cp5Bu1B
	z3CTpqB3vuQ/XAcd6RnKITdQsh9Ttyg3l/Kgi8ym/LZaJsiwWKAyWzPmadhfEIhOKnQ
	vteICnWQG/dNTnyap0U3L7zO5ZiUTKsb9Gm1UNVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181472421dd-67cd3767-0c61-4825-8147-33314011578e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b853034599e2b331929af410e8d022afa67092961e7e81c13e4b83593ef3ae48
Date: Thu, 9 Jun 2022 06:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654755959
