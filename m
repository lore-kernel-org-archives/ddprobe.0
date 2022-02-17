Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4692228E1
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645089384;
	h=To:Subject:From:Message-Id:Date;
	bh=Rkd0mn5d09KBZRy8oK0jUXqigOpelL0A8Wy+5kyraxA=;
	b=G8wsjAIIlW03nHqCm3w+gmaLxP8nPp8JPtZhDjq67utN0AOI1KItaFuLjMz6ir5W
	Ujk+q9CSALgIdIWRwfpkDx0etIuYLO4oLkL/XAh5vRaP6vydJK4QbsTJHnwPHVyZTdQ
	4vUiSVs1XyuIwOqcNz3Iv9i5Kz2ItS1Fb1NHT7CE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645089384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rkd0mn5d09KBZRy8oK0jUXqigOpelL0A8Wy+5kyraxA=;
	b=a1jSwirTM9NL2KS/LZ8SVumQ0JmsxpYsBbmrOI9EcOqDGxhGH349CB4hHwo33B3+
	Wl7VKI1a+Grs79/+7TxyhBB4xQDo4fAUykq9qVpBMQy546rF+bYNZ4CHtOefwNSyI87
	Vw4rjAoYmDoCf3ygI5KDBmh3tCdZ2VcSc+XRuTNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06f7e936-9ac8f500-ee2a-4f0b-afc3-083df5655ba1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebb486c090470784110208c3d8d048be9c31a45fe83515c93c7c78091649ad69
Date: Thu, 17 Feb 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645089384
