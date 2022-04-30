Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA691852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 06:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651300318;
	h=To:Subject:From:Message-Id:Date;
	bh=g7I4R0RmvMLq621yj25crTzrraIWMDaRZv57kJ+JjmY=;
	b=i+HPb8SCKlyX+F8Chy4qpOYTTtGK+D4IGwJs00IDSEODNxOkklGV86szbGlJQKfq
	Hx5+jX4nC9e3/QZvnqWwwmFc0fKHVtLKJWdn70B6oKLl5NiRGY1VsZT0akyUcYkMCtr
	5xhUeEDs8W/ut4VRAIk3w6H32H3jOmkpRVuIi4pE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651300318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g7I4R0RmvMLq621yj25crTzrraIWMDaRZv57kJ+JjmY=;
	b=LrfTpPU09/LBQgFhbHeX1Sc87vRMi3Trzy36fMQlYpjJmHVtHh9K1ZqVorOS6hdm
	p+wk/Tpr3BpiIxL2OH+GFi/vWcln5NWmIo5IVOTNKHHOEfztiGE+jKj/X1/jKsDDBMj
	xutiVcsTfjZz2dQTqOg/df+5vAymv66r7iGy8x1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180792b3c63-ee87e554-7a03-4ebd-a400-1d9d32efac45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a22c0f0f559a947f56f6e1163ec207bef259c219a23475e7c8f715ae19a04b1c
Date: Sat, 30 Apr 2022 06:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651300318
