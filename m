Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5291B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 08:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648110298;
	h=To:Subject:From:Message-Id:Date;
	bh=yqWgemQBwxjfP1HZvivcMqOeg5GdySid7UreUANxIXw=;
	b=HgR0miEvrt58oQ0vT3ybnr9CW9yYJ9Pgg9Qd3o7KKuDhGhNtUXoTzQM1YGQ0AFHK
	OLVJAo0QMNI6EpL6gFpolTjZcfLmY+y9DXVaA/URFCzNsVzJhOTHvnRRsQ95eQMC7dO
	ECQ0tytqY2vvbOQops2tFOWr3JFUSA6Vny98UiS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648110298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yqWgemQBwxjfP1HZvivcMqOeg5GdySid7UreUANxIXw=;
	b=PDKhuzTSQGNJZV5dfKnGLUoZQiBSQRJFOohySl4gefUksEovfqBMEl39fOoFioXB
	DKoSvhqYulCV220vqFiLQY/82i+svd493IxJ0dnsje6w1DTsRV5kXc6SbTGRGSzEQOG
	520MzyRnT1xLjcnmie05zRAGAJMm1jckg07reDcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb076484-6ed5c073-ce73-4fdf-997d-68d5fe602d51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6eecaaba9d4d3117d531cb98bc0e100d01a2a9340a9ffad9f6f6e230373511f
Date: Thu, 24 Mar 2022 08:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648110298
