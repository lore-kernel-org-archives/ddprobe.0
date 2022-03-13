Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60966361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647206484;
	h=To:Subject:From:Message-Id:Date;
	bh=TKmOPE4qvf9Hx6CJSdJl0aUHiHW74j2okweotnWnhtQ=;
	b=O7yfNJgkKd9TDMXFTLvbFBmhXzabZ3jMxPo9xH88z1944hIAd4xHQxOMzOpWgI7T
	i/0KKPrQiTLy6vV6Cwrqw8LtV3PY27xnsTJkJrmXriQjxzuDeNHjvb+wTIMvYyXVorV
	Gp3U26F06tei2yBSkfxrTZBUya3wK4MyvnTdjT+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647206484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TKmOPE4qvf9Hx6CJSdJl0aUHiHW74j2okweotnWnhtQ=;
	b=NIaKH4Zul9le0V+z0GxuH0vJsbg53DP5rLgbDXNNWa4eylM3VyB2wb5QNrDiV/+e
	G2Y3+t61PlswxctfCjotx4vf6KKDaqAc8R/GqMNJQdU7N7iWcb+tCYFLjlFZgAJ889z
	sOFa0NlUagwvklWfDeVJwUP3WM/7QSZWs0RJMRFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85284af1-f55f070e-e70f-4898-8398-8cce0a66f2df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79fb0b5f719e75b5c2e780d681042ddde778ce6c0073409134e626e3381d5d18
Date: Sun, 13 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647206484
