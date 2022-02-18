Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B832F1FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645160185;
	h=To:Subject:From:Message-Id:Date;
	bh=Nv9HdEsOjsQOmhoW7ewRwcPMHy7DnjVSJcbwm2oTTQM=;
	b=j2bZiBR1OETylr+tKICoyH30/svWNoHDyIdZmOhjqWnG3ogrMk+Zn5g+ul+ubrGJ
	oCDkKM4toVVVIhJ1VYWQvgg5JWLcPtzAg7BnTVgWI3p8mrUc0VFif9cfxTSFrjqkEOi
	DOXg+cmFVHcIWzyXXcsdT5aTWxHj5TZO3PDt6pUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645160185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nv9HdEsOjsQOmhoW7ewRwcPMHy7DnjVSJcbwm2oTTQM=;
	b=ZX7/GGDsKntSsX3iyJDTBKff+tUsW3b9mOFuswG56Mq454qavOWMSffbXhpf2VGu
	M213YV2xEReBpbmDJWIfdGUFwiephyxN2QSK3455zLzzbQ1dr+upJwwCRWBkEiTd63g
	YdRvw+ihRRcpmnmcgsyY6UA+mcJ7+lKBBWQI7mNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b303bde-14cac1f0-021d-472f-8666-b2914dfefbfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e63d40b7cb6dee5ef98c7538e27e71a663dfdf47a8f2622fea7929aadd7b6f98
Date: Fri, 18 Feb 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645160184
