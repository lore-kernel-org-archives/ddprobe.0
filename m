Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80721378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648020985;
	h=To:Subject:From:Message-Id:Date;
	bh=ZQIdI3dKJGu0CWSTipjA8NfThfrcpuzeqPYEFn++Syc=;
	b=M7FsMpu/90MTPbu3Y1Ad1dC0/GgG/WI+UBIpLSnAvaTVmkawA3UI/dnIuHV/Xup/
	Fdo3zvYiCDCLK7gt6S2OWRVYimv+GU6QFm7fPUaJkWT6UO2ynK184dq14GbK4DOQ2c7
	EM/aDccVf+SQ7tsABSCG96G0dtEogMQPAd8BY0rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648020985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZQIdI3dKJGu0CWSTipjA8NfThfrcpuzeqPYEFn++Syc=;
	b=FmRvOqZ3dSl+B9JxMP8I201OTIimnk9VPTZmKoTjmVQW8dkGETfpnJ/TGdH1ON17
	sXtfjEo8HkElFns7p+BAbrlUuFsVu9vh1Wn5pjFgY3rKZfErrEF600zR567HnsVKFKe
	1AoszhBFzOakQbbK6+uFhr2LX92tgPsUZ3YPP9u0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5b493df-aea1b54e-9876-42a4-9ec8-1fdda2653965-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dd99f63016dce884fe580a7d97fd2460b60f020a8b772598894bb46a692c123
Date: Wed, 23 Mar 2022 07:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648020984
