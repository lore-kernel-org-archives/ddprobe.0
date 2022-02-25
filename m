Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B711FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645789584;
	h=To:Subject:From:Message-Id:Date;
	bh=HFPH8izHl8WmjmHXmKzQDZLFAMsqdjjp6qTlQu+1OmY=;
	b=WjCmQq83He/tmgqtxuxv2LN2sc4MTQoSb+EDgaNTXg4axOpnKT4dXGY12wx1ks5v
	loNTuW76m5RcK6s1KBwcFGTaMION2I9sQj+sjzIZieezZoBAkhpGBMA9VXkqM76pHG5
	xcodtizCsviVnZjyk2yVELx48/t7ZIKQjwM70J3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645789584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HFPH8izHl8WmjmHXmKzQDZLFAMsqdjjp6qTlQu+1OmY=;
	b=IfRX49Dd3xRG1aUgMUD3IW1eaYMHfd8wZSG6/L6CjEpaZTnRCx14X2po8k5ap9ax
	DIu3EA3WYP9UmdsTbEyPAK7Kidu3IdOBFdp40HpZ1XIK5tDT7vH+inI0gIT6k43Nwpz
	jur33yazoZuaM3z3Y1T1aFnV7ZFnwjzCLiR5EX78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30b41d77-5d8ea3bf-ab35-4cfc-89ff-14d69d2237a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebe8df697060a51478d5bd4cdf513b743d930fb25a6cb8e074249fe4bb3b166c
Date: Fri, 25 Feb 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645789584
