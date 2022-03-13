Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA8BA46
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647174084;
	h=To:Subject:From:Message-Id:Date;
	bh=0pe0wzgdc0Jjcotc1xVE8TJQPXQgmbm7RbIQ9FMUeaU=;
	b=Jd24uue4h19tutTXMDYfJC43jagaC12gK5l5xFsQlLGcNnDnXtYIVbcNyv3J+LVd
	WSkzIdbfqqUg+SRBUkLqqIsip+NjqN7Ne1OUCmBXcs0OHoLwLRFNopkMyB2jdPomZOd
	JDhidEqt6+SH/u6dd1VsR43kcZkrhSGNav9jFBHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647174084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0pe0wzgdc0Jjcotc1xVE8TJQPXQgmbm7RbIQ9FMUeaU=;
	b=A8bd4sT8Vt9IyjJXJ0r7h/9A22D4Nh7zVv8CiXvg+MUGtEPoPrZbDZySvLfJ9jXU
	xu/7KWJxOk1p2H8XOUequGupLtd+vvwty96nDFxDfq3W5c+scuCOn+7n8o1YyEQSi4q
	uT55RCybQJ9B4O7jA28C8e2M0+AAfk7MBBFCMqV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8339e874-8f4c5df4-d1e8-46c4-bca7-f247e94affbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7617a7f21a8897df1c8a89841280f90a00c2bbf85647aae701ddfd69e48bdc77
Date: Sun, 13 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647174084
