Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5737E17CA
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 04:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649218738;
	h=To:Subject:From:Message-Id:Date;
	bh=kpnEZylhlLYBkUUAPY6pfJDZRkJ9DQuQ1SlTbqLGPPo=;
	b=MK22LtlI5cyPlMbTETQYzRYawkWUt8A2LRLq8aWPOjaGWkBYxswW240eUBjqOrW0
	gYk59bFDoo7qQfSaZ17O3/GiKcag98xXemO1ohdpJ1QHko5YEMY93Lvntfm/SGmxp09
	G7aGUI1Rr/1lpv2XDkm55Z9ouAiPucFT+oVEsz0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649218738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kpnEZylhlLYBkUUAPY6pfJDZRkJ9DQuQ1SlTbqLGPPo=;
	b=aIGYyYZZUcYrJaYHkVD8CMeEYjNen/wQvqrSSA0MnvZKSvC/BeXzzwHlClzJgwJh
	kE1oo1P9WSzguHq7M03NPdL3SCutQ4n/5QeO82bvSbugopvEfGDcSX9PPCwrb9uY1dm
	vLM7zzQeE1BK20e2P2O9agm9eOCG0l2w0rI8oP7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd18d85c-2402a55c-9c6a-44a3-9edb-6fb373987080-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4433d275704ea3c1aa4c9452f0054dac18078504043b3cf324eb4c90ab346caa
Date: Wed, 6 Apr 2022 04:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649218738
