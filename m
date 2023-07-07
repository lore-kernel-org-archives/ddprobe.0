Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D6C20E0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B9FC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688708828;
	bh=tSucfnHCv2rpoCP63f4f1QiCLUjCvqUVRni2gQI8Ims=;
	h=To:Subject:From:Date:From;
	b=s77q1FTYQga6zMAfexFHVGCDpn2pITCduS7lM2axt2822gBZr3KoUVO9RiPFHaqnm
	 iss3MbPoIvsQQlq3TPPlH6nq7ET0VgGVR4no6prIEDH89kHNGPR9wxP7/asof/LZyx
	 +X3f3vmHJGuOr7UstWZ6198yqHeZoMYzURIalCu42wPlydn/LuwIIRD9nXgoF8fko2
	 +ayB6D+MboT1Z7IBMcCUUJrM2TsII2Gwglx/JDOhxvmczRQh++NT0UXBxUxVpW991V
	 S0Dz0zzrFHqebrmkdUukk8YmDrmMzO3ISNm4xC9E0e7tmUcv26TSKFAsgHfCyRmP3Z
	 H3SdIIIemrW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39FEEB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870882872.21678.4670259356258413296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba172e72fa4f751c48205fc36f040ed3b28decb67e4a2998a9d203362c0d5d0
Date: Fri, 07 Jul 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688708828
