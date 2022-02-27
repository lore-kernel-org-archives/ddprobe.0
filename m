Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625103222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645997184;
	h=To:Subject:From:Message-Id:Date;
	bh=adoBeECreCF9VEku6IEJWLvWOlo5NhVCQ+rlpQvF1u0=;
	b=GrhCBraKfDwvAZCzeCptxU7BkgvrRE6q470dxLVpa0+ZxHsygQTdfT11S2oKnh3H
	ODZN1LUNNar4bUPYGKsWL6WkhKz7d+zNOQRys0GdSJLp2MsO1JQVqxXL47GK6jfz+2q
	u8tMy04SvXCERcRvA3f5Jqe4J8IqSOSC9pMh/yWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645997184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=adoBeECreCF9VEku6IEJWLvWOlo5NhVCQ+rlpQvF1u0=;
	b=MqBKTj+QNyKpXNLc1rkan0HptrAuiBhzyCr1zS0UcV06X9/kvBv71L0vVb+J0OrA
	LicNmgghPFqRaqj8QlFZOodVMUWW+ufKc4P5e3KdWEHFkQYNi00dS9pEJE1g8DywR5N
	hBns6ExjVFF6mYvNqI5OZz1/jpnLEMtR54Wl/Qn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d13d740-a8918ad1-0c43-4ffb-90e8-eb28272c8c33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17a3743f3468a9cfa47f13541731df0170dac8b48a65204cb961175f72aa2dae
Date: Sun, 27 Feb 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645997184
