Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27EF2F3B
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 22:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650668278;
	h=To:Subject:From:Message-Id:Date;
	bh=kg8X67iJkGSzPBmqj2SdaJqYpu0bFE+9VpuwzMH48Ds=;
	b=ihytX7VJifLLQwxOicnn24qtQomM5t2F/mKwNdn/93V6GwNCr2kQaYhmvgLXz2oS
	QKvJIieHpaFb4rupl4XoT6fzOIr4rF3mDD+tsJ810g/PRMZGzB846JH6VvzBD1Q/2ZL
	Sx1TDENaG9iyg1BH/E7FT+KS38N2fNdM/LxLJoCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650668278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kg8X67iJkGSzPBmqj2SdaJqYpu0bFE+9VpuwzMH48Ds=;
	b=BH0TSGnSJLPRAj946Sx6Lz4regAeyM8YhEdRWs+XiadJPeRhTS/V0UpWmJp+G4Gy
	uKZXmYPowSYlB9Uuy3BPX3gp0gVPLRl6j7g9jAcC9vfU8tFKEpJiwGgD8D89Bzpq0Yi
	QNMjDG0d9Zn59uHWg/Ty4Tsz4b9PBsLKSX+oQ2Yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180537f121a-331fbe15-d256-4e00-83ae-8ab45977b6c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf19349b7a1b1e684fb5a3c3a60ca09f7dca9c0a1828b40125da07fc5f1dfdb4
Date: Fri, 22 Apr 2022 22:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650668278
