Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E7D2F2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 15:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650813898;
	h=To:Subject:From:Message-Id:Date;
	bh=uBEetfTrEWvR/2eJcD62IA3T/0sX3QPzgk5qSo6+zB0=;
	b=J17JkvXTeTWQqYQtyxwmDMh6dMervCLND5aEU3Kw2rWXSlV0++8CFuNfv5SBYjGJ
	+N7tDWnjVAoxDQwI9Bg5AMcoQgFoxuY38azZP8Gxm0HbpbSxfXyj0IHBC7HbpCFtpld
	suVQHfsIRck5gucFUpZNHQA4wy8gQdFPfMp8yp/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650813898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBEetfTrEWvR/2eJcD62IA3T/0sX3QPzgk5qSo6+zB0=;
	b=JkbjTdfkrNcfZrab0KNBsnjHaEfKeiqgRrdCxH1dcdKgLNc/91UfB/lTJaEEiyCx
	qnSI/umeA1jPTorUxu08//995TohzB54C4KaLu5a0+h79KS/7FXyKV0tnUK9U2nh4s4
	Q6azFIVsm2SlY4fv2WTX42w+qi1Khs91qYNLQAjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c2d0e32-78189912-07c4-4ff4-81d5-e454312f653b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a8fe62443e5685894cad234a67550d5476ecdc4f271f2dfa649da800408dc89
Date: Sun, 24 Apr 2022 15:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650813898
