Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5887B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645371984;
	h=To:Subject:From:Message-Id:Date;
	bh=gvYaCFGSkCLrzKbeAdduxpJEex/exuX6hVZG7oc5pvw=;
	b=WytyZClEb9Tv5ADq7Ek2PCGMG/1VLh5CcndLC7Xf7hXJdqv5tZMMl0YlP2RihpfI
	nsL3vEWcnYO8+yWYhHJXIS/U+OvyOEeOCZrnyKfV2GrMlrFWBbhtO6IcEZNiyOj5T51
	SW60z3x0regmUXC0gxhl5cNqIAHLXCOMOalnyzp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645371984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvYaCFGSkCLrzKbeAdduxpJEex/exuX6hVZG7oc5pvw=;
	b=C2F3Ur7y2Bj1P+iz9wbDvVaRv3Ksg8l/2fRPCSJqtmCTlHK45LdpIxtdXWGBKiTR
	16O8ILlj60NEUCvYQmPBECzKr0uID8jt19qwv1oT6d4ioVIBRcuMs4hKUffxvQPqElX
	bVmPsZucGxW3uXI9EkESjvXCDNbY06gJUB0y9eLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17d00ba5-950cb161-0e73-472f-8e33-34c8ce1e8275-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca3803cb6ee30ab0aecf76ff173a1f8fb123dba253de7aa34cb095f0cbfd70dc
Date: Sun, 20 Feb 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645371984
