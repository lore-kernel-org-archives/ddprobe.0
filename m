Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71641841
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 12:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650456118;
	h=To:Subject:From:Message-Id:Date;
	bh=6kOf492JAwNlb8WOp0/Xm6eKBvbTZH+/huJIJVO0yTI=;
	b=mA6CMpcijeRAXo6LLLkKK+CS5DtXbpISHQr4+QiWlge8DQHyja5jOqGWZzTdn9rd
	wgFmA4y0kbHU2U/++0lx5Fw+I19grcquEFY7CpjkU2kg/4axpjd6D7qDSJ9Cf+ENQUW
	oTRt+C8gQ0m8SLTmAhTkUBFwSCGbrL4s8gHabrAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650456118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6kOf492JAwNlb8WOp0/Xm6eKBvbTZH+/huJIJVO0yTI=;
	b=KV3nt/V9Xq4Mkva1NlT5lCs+Zp4/AgHFadPpm41Rzv5bJ2SpFg/OL+urZntZFVwh
	FNCxdZf0yVoAmatwLP9PXETMz6aUsmC5QvmGKBXOr/XjADorZWiehZm3tBvDsQ4Rz++
	xvCEKNH9/fqjGbqH0e4T4dIAz9zge3Yd0pxWAy5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046d9c3f7-aa362ff5-cac3-4355-bf5d-54c51e4984a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93e18158cc165e33b166ed738df4838b2d71599b65cbaf5ec625be488e885fdf
Date: Wed, 20 Apr 2022 12:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650456118
