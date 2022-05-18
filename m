Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182304690
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 03:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652845859;
	h=To:Subject:From:Message-Id:Date;
	bh=gFdHaviqQgz3iCY0wRfwwMoDvSkLKp/HkBqVWCJV5mo=;
	b=YaMxvqkF97EMkBAralLsv17fdHLn/bSvLQz+akEhqQP/YUCRn+Ko7aS7sDBzJwWx
	IN7H/nEOnDHcNSyV4LYELcoaVHgH69MKEYw4Sy8GFrY9fnpdwmjFSx8rvM8U/BvnpNX
	dus+nrACO8A/ljPwlT2rEN0e1xsXUH163dqolfX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652845859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gFdHaviqQgz3iCY0wRfwwMoDvSkLKp/HkBqVWCJV5mo=;
	b=P1p6ujNeaaXUyB5SM0xyU8PJXWCPb1b+0MJax0Usto4eSQQSfrKMinZKqlMjS4Wq
	hYnX3UFe+8TC5flLsiU9QuEgRg01K8B5BzaoQ4BMkB1DHymB06+XFY/Zvi0mFSp2gWA
	MM4gSGzHXhcO0s42Irx7Vm0KcTu2HAgzCvt1oXO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d54a51cf-e737bdf9-4890-4dd7-8df7-896436baeb8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 362e1b630b9524dd42aecc44cef9a3251f449587d7f31c74f34080ad1137f3a3
Date: Wed, 18 May 2022 03:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652845859
