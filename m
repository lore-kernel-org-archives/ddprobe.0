Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8444AEC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647195384;
	h=To:Subject:From:Message-Id:Date;
	bh=vVAO9pHik0wYE40g78oE5eoh2yZlsWvNMDxxE8kHrH0=;
	b=cnheMU27BJc9r0UMuupW9piRw3KBjDstABMBnucgGjNLuAUwrmLREagWabBA/6AN
	762SgFlPYcsU0V2mA4RTuoACaGDO6PkqL+8p/MymC8Drvc/ABsQNpSvJ4cTIVwMxGxR
	kCCU+fSNcKLwDFGEXWoceJPNSrI5H70xBThUh5dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647195384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vVAO9pHik0wYE40g78oE5eoh2yZlsWvNMDxxE8kHrH0=;
	b=XXqX4FCiEefzTcVnU2/cGnsaa4SaxBtxGLx2ls/ME2HBHMmV0ibXpyFI+4zMXoA7
	ui83362I7N1MbtkNI7v27jtEgA0s0y2twy4C3gBQBWXV4pQUVSyFvnX5dVlkmo1HOyL
	Rlvlm1Y4u32S3oSIN1Mb8I7viM1HKsjz+P25LAto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f847eebb6-78a64b81-1351-498e-94db-db8d291e0585-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab1d57dd220f535b6f9e89f9c4c34646d116b192c07a0cba86212c5f9b45fd45
Date: Sun, 13 Mar 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647195384
