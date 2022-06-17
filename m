Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A7D20E1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 18:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655491079;
	h=To:Subject:From:Message-Id:Date;
	bh=WBaEM/mk1fqccG0/Nz2fnCIQbRZGzpZRC0asciIt1C0=;
	b=gPml4e5F/qn01vfniXiLr6/ZYEA11dB/1vxun2iR34IklWcS6lmmWB8R3oLYHw9g
	kOgVY0mQsyFhuGwgsEZZF4G5bMwKCVXagoqhc5P+SLjbFE/X2fCSvqImVhLXA+JGx4h
	dI9lyglIHp7uNL5zB/dENqf07zSj98Z0Ie9hZ1g4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655491079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WBaEM/mk1fqccG0/Nz2fnCIQbRZGzpZRC0asciIt1C0=;
	b=YSRRY14dSc8Ud0hp6zlgf7C25c/tDXc84tYM4igE0dJM2i7zjs6uiG0yCP+ixAsg
	uORHPWtasfAer+M+bcfbRp6NZfXTjxzTLe4MN4IaR4vkx1S86AUxWG75faTmgb2n4aq
	2eR9DWgnMMQUyyF9M7gDHp+G4TfUkG4G4icB6exc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172f52c65-ce72804f-e2da-4a6d-9c9a-996ddaed9df8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 950a0356c339ee929484a776e39f939fae541a8f89a7879e264a6a780beecfb6
Date: Fri, 17 Jun 2022 18:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655491079
