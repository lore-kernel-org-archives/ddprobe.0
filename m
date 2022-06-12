Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055C8A42
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 05:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655011919;
	h=To:Subject:From:Message-Id:Date;
	bh=9+aU2RE+NOQs4ec3/N2M8GaWlfJZbWiMjOkN7stfQ+8=;
	b=hHDkVelPuuZb0Xn237KhhveMUB1litf1FRfWOwFpjesvv6lKq6vnrujEcYRWIvet
	p3HZoCgslhi/Rt1uwHDC6p699zqfzRfT+ghUjO+Tw/EqToxWbyAjWhku8T2HH3PYXUd
	Gwm/y6cWMGJaPSubKFMbTZ62Mcj3SK+3oJfJSMzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655011919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9+aU2RE+NOQs4ec3/N2M8GaWlfJZbWiMjOkN7stfQ+8=;
	b=P022wxcG0l0MLlmS90VQKAQf5lFAP8SMQHCPOFEYNtbHKdUczn4QoIAltKOG3C/w
	+hj2LuOuENbEDAxjozl9GG8Ie9PCaSlVqLpY+v3fjSdHE2j418M/obWMvKFWFhqRX9o
	KqIMOATgOGPwYaJ4ne2sARdLWI1EsjdCdV/S/gqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815665c5b3-4d960920-e273-44ad-b968-f7c602007200-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0db8ab61db2fb2dfd02715e4404c6030211e2c9820dc26187c21c2abb99eb388
Date: Sun, 12 Jun 2022 05:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655011919
