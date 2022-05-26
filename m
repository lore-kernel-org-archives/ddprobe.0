Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCB11113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 07:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653550079;
	h=To:Subject:From:Message-Id:Date;
	bh=lRvTvVmfMPVY0IG2e8MgPwLEWGSlKpJdJglJyd8MfSw=;
	b=bpUATUiBKOOIcVObx4JktuObRaOQn4wTVkqWDQCbyK59hMyCr9tTlVFKuIeNpiTX
	JAnJFODu8DakQG8XhJKkmqWdC0xyLoVSbMpSni0T7O6YyYYHkrNPz+SyTPRIPY81J21
	iFBHxzyjjc9p4fieN3tsCWIebF27fknLC7VcQUjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653550079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRvTvVmfMPVY0IG2e8MgPwLEWGSlKpJdJglJyd8MfSw=;
	b=M9wMEoo7uW69dsnVhj33zz8ohdmQixpSLqG2q6lp290JKZtSrsriTl//3v/7001t
	jA0hsznfV4iQadbWiGgnV24LVy5pUqraaulS3nbNxBciFwhFHIBDMpPaq0iaLir4LRJ
	H/kgh9ykemqnn5Pzyc5WXd6kj9VkkG9JXn1SpPSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff43dd5e-a694b829-0614-45b0-add2-797842984164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2027940fbbca87d9e0f83560c8fb52353a76cabe2f459738427001520cfec770
Date: Thu, 26 May 2022 07:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653550079
