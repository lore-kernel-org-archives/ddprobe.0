Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE17F627
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 04:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654143719;
	h=To:Subject:From:Message-Id:Date;
	bh=S7ERfASP3sEyHSerdO+ggVKjdsyHdHD9EJb8wOSnLbs=;
	b=b4VR57HVqVTmcZkpKH1qQD3fhlXbsKZwvywKe4g7NeIX3hsV1D8K+Kt205AkwnBF
	90qrGdORKmRlskl+jUC7yTPrk2nDcUACV54PS7nKEadk+aDphwXwrr+VudRIpnWyOWk
	2hsPVLN0SYVx3DaTcY8tKt/Jko/K9rlWm0xSdNuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654143719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S7ERfASP3sEyHSerdO+ggVKjdsyHdHD9EJb8wOSnLbs=;
	b=P3ac6Z3o8pQ5gMq+a0kVOIKsu8NHJkMdISFgeaTAv3eMdIdnYOUvMJcHWLsJKPM6
	Wj6FVQpnSpTbCEvTuBCpm8qHUAuhofMyS0MxTGezSLbRKxu05NuC507VPRkSi5XLbC/
	9pxvsEooRTbYyvKNHX8t54DcKAKdV0Gu8ybjlFqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018122a61746-9bb136ef-ed72-47ad-8927-c31bd1917275-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abb9ce36ab1dfdc55d1dd330de0ea3bd8c7b86a33479d7b60c2935c9b63cfae1
Date: Thu, 2 Jun 2022 04:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654143719
