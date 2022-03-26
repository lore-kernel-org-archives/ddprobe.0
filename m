Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116CE7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 16:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648313278;
	h=To:Subject:From:Message-Id:Date;
	bh=yxBLMXVFZtkhicm8RfR1w3sr3yXzI2f2CuVLEU/qusU=;
	b=EEdl7ntv75aA5SwzIzFMH6LnZcutSPDutEaHMGJvM4vZBZAmfVjHzIMYdk3gW81o
	lb+H2yeGW+uIVNvak7itTWpDYxp41Qm59t1R5yDXCqnMJXEupHq4CLhVCjC0tI7rvSj
	DPzOWKvul1b0jhPx4WGgzJqNwEmeAsIwn+raiDEg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648313278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yxBLMXVFZtkhicm8RfR1w3sr3yXzI2f2CuVLEU/qusU=;
	b=LCeFkQf25Tw6D1AyIapuERAZQhnZpz5KNQCxNqzyTPeWrUg377usk4JStYhufLJm
	5dJsIVW8h6F6N4bodT7psrhvoT+x0coBS4r/eMVdSaMJLlBDNLkqYLPMG60OJ2DccWq
	xlGFjMu2d8Gj0WgdprFmaAhJDHvhxsveK7XDhcfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7209f29-0a767877-289a-4059-b5ff-8d2c2f8558fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54475e2e0fc6eca551826edea04dcc396e0fc2e51e80e40263eaec6b9adab47c
Date: Sat, 26 Mar 2022 16:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648313278
