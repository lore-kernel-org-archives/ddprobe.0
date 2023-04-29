Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63333320C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F099AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682787366;
	bh=98fZ8YwcnA0mMvtL7lmPMHMEfcb308LseSuwxew3O94=;
	h=To:Subject:From:Date:From;
	b=HbE59riJIBgh7vCgWe+LhB9t6OtRpsxjPPa+y4hmTBbG1WN7E6Rebv5/GVMT7RI6j
	 82PXlU05PJAU8b/36QHD/ybU0HSFYPuNGziJVWtgVSQL90eCNvt18PSka+EGtvKDGF
	 1AaaTZi3SB9ROqW5eczeUCi7Ir8g4C3fwiTcYOCO+oNKnY81Ehjduelb/uIHyrC8XU
	 sAse1kyFrp+X2Pm0OVRHzIRi41g9Hsa0QoDadccrIlp7ETpr/9IhUR6AuXJ1dIACYr
	 wh9dMt1tF/Ha/BOYLgt5ZI2q1DWxfm8N38J1X0XX9rOfGn+fm03tYbT94fd0nOjaHW
	 VWYUtXIM7cmbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60ADC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 16:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168278736578.15973.10050970888248778035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167da11f9ee138fc7976e940aa915a9704f2ade42a1163e80600920c0efdcf0e
Date: Sat, 29 Apr 2023 16:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682787365
