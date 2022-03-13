Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CCD361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647209484;
	h=To:Subject:From:Message-Id:Date;
	bh=Zy9YKTsk1PbNuztgIwFGsgb9XKtQgh0dMooKJvCUklw=;
	b=aPQHQRcRe2sahiyfIIJzfqDLrI2QlWf0eXhVg1DuqLTQP/ajTSI9QexJaO228chM
	NRc71m5jELZ+z2kXRQj0arrBLgaGaDU8dBFcvOPuyyfpI9MswMdz1uBB4I5PBONRTAQ
	iMaduheL/R3YKGHBXAoF0V7TWCFOQ/I4tofBBk1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647209484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zy9YKTsk1PbNuztgIwFGsgb9XKtQgh0dMooKJvCUklw=;
	b=drbF81xm2ifRmLFFlFwrK4wvEFErURFV67YPF8ee6eCSd6s+jly8oRcsgx+XRtkM
	p91LNlPuDLtQNxyMvRApyuylxVq4XBHt+xpWMBUTnRQpduVClIjSJY0kfTSGfzOFcs5
	JBWg+SGKL0xyocLgWjNQ8CR0NQ+5JEJiKxdppTj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8556120c-1bb3c14b-f733-4e69-bd54-49057623c4ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e25e10508c6662bb95d04901b95ed28d2124d81e1c83131d9e8285f67356f5a5
Date: Sun, 13 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647209484
