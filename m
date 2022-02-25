Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B820F7B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645832485;
	h=To:Subject:From:Message-Id:Date;
	bh=uTvc6hc2YGtVhaLC/Re64GytrulfRB+0XoNYfqQdNM4=;
	b=C2jERSn6WkkSRXKChDY8cBq+6P1Gk5oUsmpMNAzm5yPo34SwtuUR1z27fX0UUw5i
	bkydiwZTIqGVLqPlRH1jbwqVpAlWr+VyKLThowwdDHoDx8aM6lmFoWC9ICdzbSDAlKw
	VDhX/KCtRHVgAdhRf2Sk6ro94IKz4WLxiL7crYVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645832485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uTvc6hc2YGtVhaLC/Re64GytrulfRB+0XoNYfqQdNM4=;
	b=EEcBrWJ84Mhr5NzmfrHEmHtpkeXATpbptqXhuomazKrv9oPo1uDlOPUKaI8IgNX+
	D2mqlss9XwHQbextkHvF3AqbJsb+Zp5PGgglSUH8KqDRqLJkmLYHr2VSWN9mdik5PLy
	tqxqomwby3E6qL+6z7hKarwdApmW0ksy5D6LC/lY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3342b7d9-cb1cd645-1088-474f-9812-15861e2e7570-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a39f386818f857dafaaed09d7c96df87ec7f10c873252caa84ced069b7114e77
Date: Fri, 25 Feb 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645832484
