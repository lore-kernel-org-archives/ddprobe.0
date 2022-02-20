Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A705EBE
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645389384;
	h=To:Subject:From:Message-Id:Date;
	bh=SEZnmG9BYJxXJbp4F6ajy+HQ80Dr3sj4qXrH4A2TUW4=;
	b=hAV28aagC+1R268l8UvOcIofKHekPklzgKVPqPm632zjz1JSLM1yH2pC0V6Vfq6s
	gkhb7x2TikftW7wyL7vue4hx4YVNdWMHd9vMfzCCToz7svdluiYL0wRN2tOIb4ik4CZ
	pxSWv7KS/mjO3cKjeT1MD2nLYkcVNjxRZmuYHFu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645389384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SEZnmG9BYJxXJbp4F6ajy+HQ80Dr3sj4qXrH4A2TUW4=;
	b=R7F2uplMB0giS5HeyQBua78y4KN1EjhDmuOEjz5MVDt9MHe5+FVtB8pbsAqEedA1
	9GwpTUXagKLpF2n4Hue3wPOp5ZzvgTBt8Dn6XppblEmCCpkRDOubDuYqGWrIdp0AChR
	1gAEFiqi6P4hy26upczp0jvNtsfjPhf9JkNGqxmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18d98bff-ba1d2092-8416-459b-bb91-67b18d470b7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7133d86ea49c8fe928669a83c720951a179c2936d3775912a23637924a1f1f55
Date: Sun, 20 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645389384
