Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B157C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 07:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644737405;
	h=To:Subject:From:Message-Id:Date;
	bh=nwo3aKn2EGNIcL2RrDQM2vgbmBNjMa37pBbu0vnZm2k=;
	b=AzloLRlxDPZcyo+YLPsNaEwr/YlQKEJIFIGa/Sv2hHWXmegftcb5jNgNdWBBlcdx
	DGzYXUEiOdMpz5g3aLch4Nm7zU0h/5fKPLkyONRCx+LAZir79Ta3X4XA8CDuxiNq6lL
	40CIEczE8Y424iW28Xl0FiFCe7aagJe0EOHQmM4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644737405;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nwo3aKn2EGNIcL2RrDQM2vgbmBNjMa37pBbu0vnZm2k=;
	b=XkELH17n7R2U5lT40n5ndu2Mn3fXIbrvHVSAuQn0dzJPMqCKJnZIoEDMQj+drS/Q
	xw7u9dd4SgBZb66b2hlcFv6Ex1g37C7DbguVNql5YXqsiR/7+Y2bqrm71G1D2Q/YztH
	XVjJrbDsJ+XHcFdhTo8Phh1oTiJ6IuPG1um4SiII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef1fd2303-4ccf579c-1475-4a49-807e-589f544cc73a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72440ab34a83d9bb7fac02a9c8c024af63920bdb1e489d30da23d6fe56f6055d
Date: Sun, 13 Feb 2022 07:30:05 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644737405
