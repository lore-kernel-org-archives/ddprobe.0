Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B21F1870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661367053;
	h=To:Subject:From:Message-Id:Date;
	bh=hWvAhWvs3gS4hqdQez/z83MoUZZX797RdQlu0rzshDk=;
	b=guWcm2SxpQCvgnWBWEtGxsiMzW4RKzYXUJQHWNOXasWXu7ctVWxB3S48U9wf8F56
	tYLYyaAmzedUJxv1SaFgAvvg9Eg3NdoBihaRHWXmFBLOn5MszJM2BYWLYi+fB5mstzS
	lbFqIkwWHoKZSsqiusDOwzKdXZPPCS2XQ9VVtFVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661367053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hWvAhWvs3gS4hqdQez/z83MoUZZX797RdQlu0rzshDk=;
	b=hYhOP/45lZTmDYkD3xUW0Wwa9Jmnu3hJyuYt54GCrZPsJGKe8oDaqa44H40A3WNr
	BVYP+Ypjjl5ERs09jFRhYX4hqrLQeq5S0glG4kgMeq8oGi5TeEElB7xnePrnyQj6CJQ
	L3CT536528L653DkkJ6Yyc4hF0paElGXb/GTJ1hs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d1316930-d97fe270-49a4-4549-9c3c-71a6b8f6731a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e79bacd6e499c087d000658f04cebabcba37daf071f73aac527e873c5c6e5c37
Date: Wed, 24 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661367052
