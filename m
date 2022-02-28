Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A1B17C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646085685;
	h=To:Subject:From:Message-Id:Date;
	bh=6gfhEoo45ZXZYLXrgmbX/fnXGG6JkuLOBPIety3f8QU=;
	b=fam+Z8uqieelLBAkd8OttImbKb/RpBzVQK7SMnbHCDMjLaJYCuTA6A/dVngWFqow
	Pa5E6yLOG1RFjvlQgLpJwm5j8kJUc6P/eGzoaQirOohYl75glR0Wp84IDaHzIE6eyxj
	zsLQ/OEE6S5Z/3CiU6dEPhBL3l5qMYSb1I8OC7NE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646085685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6gfhEoo45ZXZYLXrgmbX/fnXGG6JkuLOBPIety3f8QU=;
	b=ZybDmlPEOZvjszesuBZouPOB5aTeMzA8n3zJylM94/m+hLFjd0sUgYyBW29fntm/
	Q3paNdsp50pc+jSLNbz/VnSnYkkxCuzfaUSAUQG5UPi21fYJksrpnZNfgzb3lo3Dtwq
	DyHQKvMjb7hfWWcljQ2VPoc0uX3zFcScuCwrnIg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f425a3e0b-3806e056-2625-4e4a-9e48-d7a5384028a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44d1766f91ff10d4a0541ad2f3abe2e05e1c61d24d5cfc19b3b4c91ca344973b
Date: Mon, 28 Feb 2022 22:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646085684
