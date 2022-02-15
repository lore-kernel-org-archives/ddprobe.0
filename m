Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DE3116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644901585;
	h=To:Subject:From:Message-Id:Date;
	bh=X5/FR+dSlr/VWEJdsgcsY7Hd7+rW9ncm4gxuPe0T+9w=;
	b=iJnR5oJ+NvxWW/htlmwr2MDIRXb7TXlwCUmaVmrN9eek0CEJHgI34t2X+mAz1DSj
	Ut4Jv6NLABPemJxmg/yhC52MNS2kJzM16pHfjrm6Xqc6Dm+7MXe47DF9kfse/g1d6Xf
	bGv6EyhEtpNts5m29A0ZMM0njNXg55+3knjbPg6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644901585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X5/FR+dSlr/VWEJdsgcsY7Hd7+rW9ncm4gxuPe0T+9w=;
	b=XaUdhdizZNm9R3Pd8D8fsceHsypH9pgX+S+W44MbKuvbNGR81Clwdc3SGH0i0/3Y
	wMt07pblHvAAj6uRIrHCwfxEh9E0rxN2c/eUGV88Tfg2V1zjL4i2FgMS8eUvbshpyJ+
	v2xRMDvHhtGXtiIwxiQ/s7u+5teLFoYp9Qc5/BzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbc64fa3-3876a0ac-83a6-48d4-9a6c-d3193c19598b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd0e14008cb89287ca393d0a1bf20ba4b983e7fc80dc3e2dd72ced09c86565cd
Date: Tue, 15 Feb 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644901584
