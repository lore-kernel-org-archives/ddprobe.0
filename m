Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291B67E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646985684;
	h=To:Subject:From:Message-Id:Date;
	bh=lPYpAsqOdeFRfyFBGMYBX+Zqf0cLvlL4AFG89JRRfPY=;
	b=fOyz7v14dzAloCsJauNfSCe67r3zXhZcb06y5mgKWCOxCEwwbqmgoa+3nM9CKTTl
	zy2yLQ4GIg+mbcn96dqN8F+bbI/THb5LJNsIs/jKc+ZWU51XZ8G19s+UK2jVtl+1egJ
	XN3Gljlvvs/teWy6gk4/RnQdU6fVAInGU9IITeus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646985684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPYpAsqOdeFRfyFBGMYBX+Zqf0cLvlL4AFG89JRRfPY=;
	b=klltt5XwClVpC9bmtR3HEQWZgZ9uydqKK7VZJhL3M9IlGX1I75b8MKiV0x9e7dQr
	CZT981Ww2rVmr+X3njZvRLv/xbzI01hiYwhWThhKY+4TzftEy6LKH2FWDePSbwa5yTE
	/DGlB2IZCDRkeMWFIGYzfQ6gxGH8O89sl/odPqkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77ff2700-bab44c7e-b389-485b-b801-f42fc5e0c785-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c542eae062c1d0a46d66f313309a84b7e0f2a64a3169e67107322b0f5de2124
Date: Fri, 11 Mar 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646985684
