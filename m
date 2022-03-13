Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0787E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647194185;
	h=To:Subject:From:Message-Id:Date;
	bh=c0BG5OoVuk1FejU3td/aBk8apc1vqrLVDPFYCctD2FI=;
	b=losQ+0rWdehXKjCu95TXtDWGlf4PJgzxw58nLFsWJxj1m3Ocxx2e2KSVaDkk7MPH
	hwtoCCkRrfvG7GxAduWX4xjSdVtSzKnIL96iuPPCS4UxK9h4yAjXGkzsEicId6TtrQe
	6IRr4n9U6C8/yVluKGQxO3vy+Ny1NiXRFJvaFYRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647194185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c0BG5OoVuk1FejU3td/aBk8apc1vqrLVDPFYCctD2FI=;
	b=EJOyliHaJbKvmU6BvhKRfxFchlCGnKvSdzC0zv2a8b1hBP6vw7MIjTKqJsMdD9N/
	6XfmHzQGAf+rAetxhIxWF2stRXtu3KNKfLnbv/p1z747glmIUb6VO1toW/Y723xy9mp
	4ucgUQemA1IkcQOyetEpnwYoCX5u0Pfx+IBwQcE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f846c9c2d-e8675410-8522-4f5a-acb0-a73fd55b33a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 934d3cc48a0a20a3f595677e96f052202a6afb6d7dd41a95ee137e4e6f2ff44f
Date: Sun, 13 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647194184
