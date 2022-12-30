Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB8F23DB
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC77C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672407687;
	bh=+4W6fAAMsPjQXU/yJz4mFqEAFtikzrWfCry9Pv0lrW8=;
	h=To:Subject:From:Date:From;
	b=lYCOY1k/MUqeQBTH6s6GmfuXglQoiEXV7dhNq1H79kDT5KLsqtK5kL0mXwD8xcfpE
	 iRl0emm6ovfCpURdqzj8jGLzNuWKvmYXogW0qo6b1BHufCAHxU1CxqxyIUF8UCt591
	 iaOP3ij5+wLJsRUAqbxMVmKe77pSiePM49XoDNaxg4XXEOJNg6mluiBG0V6G2JqhvE
	 Oi/9S5bGvuyknEqRSQW3p696YIvOV06ocRmsb3hnj/O4Z+f9+1OMVOLd/kPtWIBhya
	 yaSzc5q8IGHwmHbh50TZZ5oAA6j1NsRLimE67b/8uoD9/JoDLBMH4agOfbhcxwh3Xh
	 VKinEzrkJNwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611ADC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240768739.27310.7966646683940322845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00999f67e2bdaf7a9813fc44da9d3d96ac786828b28d03bb2a4ad3dfe61568e2
Date: Fri, 30 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672407687
