Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87787B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 04:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650948478;
	h=To:Subject:From:Message-Id:Date;
	bh=YbaqKlqCyIBeXO2r1Yo/7Luh+kQK9f43wtRVlc3I+Kc=;
	b=Ahy6uo0qCm88QZ8FAndWPzG7w3WGG/xTDPUwL3koBJsBEpewEDJ6TMYv7wZR+0l3
	WeSnCGGSSn8HxPG5V10kOgBy8kNPGT7niOA7dNe9kMbeCbMskT+HQi8+hkXhA1qei73
	ESb0wdhn6kWDoPzBwOMSMHngmA7s7Xnx3XGgAJBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650948478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YbaqKlqCyIBeXO2r1Yo/7Luh+kQK9f43wtRVlc3I+Kc=;
	b=S2jsIguweRlHqGMBVM5/C7ny5gl6T+nqkPYUPYJuzma80flR7pxPRg9D3qM+dfoR
	rJABGj2BE8pF4h2TXMTa2joPaBAEvd0ew9mFUyOFMh5tWN00ijS1+MnjabEsWzRtM9i
	PDKQCSaA3QfN4tEVXbrYv3FrNJXxpDUxZBNt/V/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064329562-0ebf1ccc-60df-4545-aa5f-11cae6689526-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e00328362e41e0ad4d2d9b6fb653ea868ca00d8db89909f3b0308679b74f9db9
Date: Tue, 26 Apr 2022 04:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650948478
