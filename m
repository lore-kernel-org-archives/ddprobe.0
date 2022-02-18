Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8155438DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645152385;
	h=To:Subject:From:Message-Id:Date;
	bh=O0WgRmls47F0Zi50hBJ5/sPDAlzd/BRZYJ8FqPP/k3A=;
	b=d1Hxb+2RaNDplvAU41kRf6Jj9xq33uCGKBELwILWgpK5l8B9Etkm+oKZRtYyIwll
	msRFmxyoVWTLBfvLnucWwdKlvQPe5ccCKK+R0IY0SMC/6FmEBbE7zO1E2pp73aqj2w9
	kiG9xA9wlRv3oiLt9jguzCJrapP40gX2uHz6XFfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645152385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O0WgRmls47F0Zi50hBJ5/sPDAlzd/BRZYJ8FqPP/k3A=;
	b=O0J44NAVX4Fd9xhDGyDO94uwkFtPlR7bdJOBMJXoipN9fOCT+nJqVimTjEH1AdSU
	ipnS/P4Kw34h4Akx+uXEFT+fq58p2IEco+xTQEy2AfzEQIkkkUw7GiaCxyiC96eQDTF
	no39M9zhBxvtxSLWqgsooweF5Nf91hYjHseVsmhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ab9375c-d09593e1-46a1-46e5-84c6-cf1697146bf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a3a47c3831eeb7b0c8ad55be0c7c9ef3de893c85ce8db5e4a29d0f628f9f5ed
Date: Fri, 18 Feb 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645152384
