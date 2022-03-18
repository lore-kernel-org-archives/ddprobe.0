Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927A115A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647561984;
	h=To:Subject:From:Message-Id:Date;
	bh=bQtn80JuDiyrgv4S5CegaVunJK0lF3PeEArDA3yFT0A=;
	b=ayBaP4LHuIzeOQGj2jah3hYiH4Y/RZ8jCkJi/jOqAk5OpG/pxscUEBfgM26xTlIP
	NW/kE6U7ZSZFY6OVld5Q2dWz5A6PY2wtyPxaSBhrmlfcQxfCnBpOS6S0/CkpIpAxjDB
	23s6/CS8F2UV29fXwPL1kT7M9DE0ietUx/CNRtyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647561984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bQtn80JuDiyrgv4S5CegaVunJK0lF3PeEArDA3yFT0A=;
	b=FxYtIYEBugrfsd+NWSWBbJDE91LrBcs2dMNSx6EoTs7pyc55WXq4chk6RfafYwdK
	a11npUHux4l+BHBPJzGW5+Gedgb0CVNZr3p8HgBZae258LceEdu8q++KfQBjc/uW4br
	X4QOP5cvhOxY2K69F1KnRtUMGGQmAOfVPNyOEGwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a58cb0f-b973546e-a712-4460-9dc8-8bd005db4940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6282a9ef17202cebb19942802daf052d0a6688094d89649468ff2c3e937ccd4b
Date: Fri, 18 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647561984
