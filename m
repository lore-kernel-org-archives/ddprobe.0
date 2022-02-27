Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD644A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645982185;
	h=To:Subject:From:Message-Id:Date;
	bh=w4vbsTnRPo2BGCF/+AgsKnwMWY8efvmDYsx4H18E9+0=;
	b=WATZG8i+yzcruDCnpetdciPFsv1HVc3jnViFDcFI1yOsqxOdx24rt6qVUu22+O+d
	Yzyxa+gRwcm5/3eRvU/GZFvOTqsiUBLVpbQXy/S67REeeD4klURncBTvOBytIjcLNZw
	V56FxrXAaC9jAp6WNWZfr+Ylag6K83kT86Wym/2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645982185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w4vbsTnRPo2BGCF/+AgsKnwMWY8efvmDYsx4H18E9+0=;
	b=YMOQBIAapmAVnfzjrK1rZ8qg/NORzRS5gK38f8aVWfby5Bw8cwSBzGQ3jOAQUwmJ
	IEVkJcDWERAr/eOpnAAmCP3TCSXEl8jUNhfGi4WZSP90CHeocwgJGmfDEjSrPSuPbOF
	qGgoRqDg8D/ESiQepUXDHQPHAH1r+EFMqrhD0weI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c2ef561-9d2be42c-32a4-4064-9128-f489354eeb42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2b5b8a4822489b7c47caab7be7c17e67981ac70896eef3944602584ef022449
Date: Sun, 27 Feb 2022 17:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645982184
