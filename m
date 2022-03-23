Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77640614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648059384;
	h=To:Subject:From:Message-Id:Date;
	bh=aT5RXwQRpr9fH/fwVi9Pw8TFlyJf5th9PVOjSrGWpR8=;
	b=Vs5LCvqu+a0MePoX23/zuTYyH8+vOpEnHY+mudqepzmda5YqKevet90xc5f4JvYy
	5XIKPVVmcyK8Qe89P6fIjF4g3NIecvHU7jfV7vfEsLl/aRrOdgLkcon0AyS0RTCmnAK
	RdYefsJuRoYQVqfRZEvobpWICrf8MXGl6MqI5t7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648059384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aT5RXwQRpr9fH/fwVi9Pw8TFlyJf5th9PVOjSrGWpR8=;
	b=OeXqDM6M4BaWPyoAK948ASi0l9dx09aVAZDMnRBjLtsY6ft1TTbdw+PuDW7h1JyU
	dMKRxgE0X6D6fhYkINjPuqBVcta87fnZ7U8Pa4zmVQtbFt4+PpKLFlvgI0Pi1dghVXw
	zKoatwtPwEIurA5UygfB14+Q2SjJYWe8J0ZqJzj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7fe83d6-65a0d548-ec08-4e38-a70f-0ba81c4317e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 439319efdf8aebc4130d74170cc70393872dfb4b52f1bbc295b3beb0197e3016
Date: Wed, 23 Mar 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648059384
