Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994410ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 04:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648094998;
	h=To:Subject:From:Message-Id:Date;
	bh=1BNHDN32tesDZ9b2LMQX0wsXv/JjWxJ2gVVMPeF8bmg=;
	b=J4Iw32k4jp9xk5ArfzhbiFJWwCP1+Mea90J+Xs1SAY9fxbG+e9/QscoZaiBiMXPj
	yjRRmY2cn7nXYLTa94C4iJejSqfjpUY1g2HhcP9fYdUr2dThNeOsr0THJGfxQtzx/Dx
	iJNiJvMh0VXovVAjg6XHsNF9wVKxdE3c9hZHQ20M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648094998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1BNHDN32tesDZ9b2LMQX0wsXv/JjWxJ2gVVMPeF8bmg=;
	b=FYPWqT8lG/HhHezfp3Q7tLhPb6OwDfSwOeB9EGdQiJHWRwoU1BMnCHfhYokodvDp
	4Z1KG1zo2OUkwL67z5RW6s/0vFiKHQr2/3gHSPbZjn8lJNg0B4a6Jilzkzcu8RtRuul
	8mwlriNgUbHBRbIpdqm8o7buwmdYwvIn8ymZ6nAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba1def24-b087157e-449b-4bed-bf17-3bc99f33218f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d09a3b82740276eda2c1c2fef185d2f2f09b4e0501f4cfcd0ac3b9acef128d9
Date: Thu, 24 Mar 2022 04:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648094998
