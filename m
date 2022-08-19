Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1AC17EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660897252;
	h=To:Subject:From:Message-Id:Date;
	bh=bqlJ9xDW1Tw0oTZcaN+gzT4bv9cWOY94vIArRH7cD7o=;
	b=IIUUAaO2zYsrSZKHTCFkKYOvnBzOTUiDdqyhK19p1g0IcsCcz9Fw1yi5I03i1Cy0
	SFR1u1JGkcO1NB24Va6g/iVuMnbHax6qTtmKU1/S5TKgVj4AOf7PSjI5zExgwUMXuUu
	PG75MXkQQ0jr1OvOY53RflWIKdwEGMyviNbAq7Dw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660897252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bqlJ9xDW1Tw0oTZcaN+gzT4bv9cWOY94vIArRH7cD7o=;
	b=KzqoU4B13+WNzVZi3dFA926rs+ZH4WVTxFZYu3V6M3k1FbjQMg7PYlS1CizidL5F
	U3GJoENQTmsE43bQYDIXtwMxIJEDPv1JQafUz3vOV9O8YF2BU2X9x+Ws5LdE1QbhRUA
	pV7GpkLFrRjIwkyKoO4m75TTwUMHeXqfO2wXmOEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b530d4ee-d2fc8617-8ee5-40fe-8881-1a39d4b668dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd2155046c2460dae721d6ae7d52b53e45fc3cf520037a1f1ceae0557325389f
Date: Fri, 19 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660897252
