Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22AB3FF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646244085;
	h=To:Subject:From:Message-Id:Date;
	bh=Egmzl3OlSKhizbFbZAqVV4JOa87xXFuAnq+MqyXWp2U=;
	b=U238TpyGSbDdAModhHe+9xxmHRgNL2RPv7ZIhR2xF8LkaJFRht4Zl4mbstFHflZI
	FVDE9XO6PdH0fg3lRV/8Xb4ZkgVFJtVlKlANu+vFL3jfBLBAL4mmXGBCt9eOHOerKCY
	RiA+SlhJos6gKiSHDROPPGKntTfQGbU/S3Gq+X5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646244085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Egmzl3OlSKhizbFbZAqVV4JOa87xXFuAnq+MqyXWp2U=;
	b=CqQQxoQPMCxvFEemrP8B1+MzXl1F2b2RZDLSYPXt0++Y+RE0BcRCrrR3yUhYp94h
	yctDutI/xeJw9mWk8WHnF9qID0EZd3f+8KDMCpj1t4Wk7nVnZknZOR9PmcTkXZ/Ua1L
	EXW9mg4NfqA2pXPJA+KqFSxRnC0fA67UDWM5bLd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4bcb3c29-9f84d415-562f-437b-93aa-4fadbeeaf1d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0a3fcd0ebdcb310e86c309bf7a60e1790d4cd1180af5ad8f50bd57f48c650d3
Date: Wed, 2 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646244084
