Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DCD5101
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645248985;
	h=To:Subject:From:Message-Id:Date;
	bh=2YgEINaSUBrJ8IzFLw+mneDW31sN3S280jUAN+HSnrw=;
	b=KRu8VyFMRiSyBYb+TLgI/eZ4EylhBYXn8NgXjL+UNRX10m59Jm6patW+tXNxvZ8V
	l+/SJRgpY+W1cMNJ/7VTNfNjam4QfwwT7Uxap9lgzKALHhRSAYLfboFzPXlqj5YfP9b
	bTGwhMlB2pHI3xQ78WNTDa4Si7jDRhHyhl4+VTEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645248985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2YgEINaSUBrJ8IzFLw+mneDW31sN3S280jUAN+HSnrw=;
	b=HCGgtjwn7LUt780dPgCvnmnuYAs9IPkhvNxkCsg1fCcBCUZxRCPd8ZeRsGyKxwzI
	AuwryB6T4vc+4Njy1YCZv0h+8Jnv9sG6Evc0Wjb8+MU6ABqB9Djt8rt5M5vanvrYiRH
	rINvb9oFyvj66xVgtnqrfu5iXp7L7DPJQr0byMnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f107b36bf-8c383b3e-2f2d-44c9-a1e0-76333a88ffd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2d77c8aebca3043ef9539b5650cfd3ab5601c2da99cb84f36fe7877595f193a
Date: Sat, 19 Feb 2022 05:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645248984
