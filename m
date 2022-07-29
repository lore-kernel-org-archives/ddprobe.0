Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541203D9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659098452;
	h=To:Subject:From:Message-Id:Date;
	bh=g8/JONI1dNeEQECMma/kdzJnudYOiL6sUzBmdcxE2TE=;
	b=GHVmAmrIPXJlBzJyw8qlupMNoHeb7MaGGj3kM7OFUsSGLDkrk9uGNFz2zRWCd9yX
	DSVCz//jJB5FzRz5fKWFQAGRF9Y2vTM6sxyeXyBmdqF5dYrh6JTixVL3cEPe1xI8uhF
	o6YVeiVtj9pkrtgw6ifKqpUBcCRMjLdXiOXDllMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659098452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8/JONI1dNeEQECMma/kdzJnudYOiL6sUzBmdcxE2TE=;
	b=kC6bCCQT+7rB51CHlE0plhho+GSO44PV2NmPX+lRwtZAiHE8nqZU0ru7fUkVzmDZ
	aqqJfkI3rZVfT3k1GPDlp8h09HJV3cgRONEV9I/nP+VBQCicALbuLpLtocxQTds4rmv
	9Wx2WS6k//2QR/IK8kBAtgsxEcBW/RHPFAMeRn+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249f9526f-8154bc4a-3828-4426-aecc-b1ab4ba4bf3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a042211518c78cd552971fe54ea55056ad7761ed4823a3cbdf54922f38bcca14
Date: Fri, 29 Jul 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659098452
