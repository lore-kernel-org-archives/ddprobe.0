Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9129B7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645010185;
	h=To:Subject:From:Message-Id:Date;
	bh=dTh7bHz31+hIKnQ1wBCCGFU9930hpYxZiTiGi7kW9cU=;
	b=fsZz0x0m7v8n+HfVojqCGrFz5RKJQ2iHWbfYcZGD/ZD+vBMNDRf1OM6J9/EG3QU1
	pLb4eWhFlQ4Hy9GxpZhfz4VWRM8JAuGA+aAnYUnJPSW4Ru7Bvm+GsR8YfRFh0x/36S9
	zyhFZByrBGFXysQR0JyE/nhdQqFndvFywljDDWbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645010185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dTh7bHz31+hIKnQ1wBCCGFU9930hpYxZiTiGi7kW9cU=;
	b=fWVKAjT+hcPOvKvVY2Ky/aFjFSAFoi7Tu4Fh10EYUtBxwbCZJgfwhUMBZoDn5FSU
	cxlxT3vnionvcuD4/rKJ8PvsYY+ZtJrEesL3bWESRtfoN/iriQ8Bawjbnop3QpLjkip
	/F5ZS3mtbuOx7qTmIZITdEOC03d1cyVR315jJhXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f023f6a4d-e5710bd4-509b-4f5f-85d1-47d1ddcf6382-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f563880dc3b22d229327863559ea9bac09fa4a9529541103a3354390c72a23b
Date: Wed, 16 Feb 2022 11:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645010184
