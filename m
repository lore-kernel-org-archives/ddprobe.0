Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F330A935
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 23:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3F8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 23:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682206265;
	bh=b1DjSyodegglUTwGftGJu5EZqJloHUCgegVQIQJAWRc=;
	h=To:Subject:From:Date:From;
	b=Z761PgjRE842JSZtFG/lu+bLDDqM46CA93AJG1XHy6b0xsoKtPMWO/lYbOLPDvKxT
	 H8PPPBP5997yQ4WFWEyHJIBJZtoloYB9T0blSu/Da21TVQF6KLVucGcCVGOJiRufXU
	 TSsQv0J1Yi4SQTfEF4wS3UtLA4t+c6hhE+EX1G0rFb+FVF66PgsB8Yc4pXtbpV0OIS
	 BJWACWfi9tK6w1h2udUm3jwJXEnP3kdtHDv2+0oRVkOzwIv/RRVtkR2kUft4ZPcVIK
	 4nTOAbQ22P3Gnz75fo+kK8HaLXcmHb62i2v7Eg2Zc5UOL76svmFHis3Q5Sw6rslYdU
	 DL29MB740+IOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEE1C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 23:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168220626576.19484.14355862627948586241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04035f311025f55277e97c3e7a25d079c90ce0e7dc97b29a87424ef80495b2e7
Date: Sat, 22 Apr 2023 23:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682206265
