Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FEFC2CB
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19DABC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682623926;
	bh=9pL+BOJp6UnLueF0NpLiMD8Hu/KWI5i3JqQGzICrKj0=;
	h=To:Subject:From:Date:From;
	b=h+r3Vqgn6m5dqGE0BMo/zPK1JaXO+I+jq1yGuVTkPmW4TZRZzhJJAdODRTMySCGW/
	 YCFiwqVesyotnpQeQmEo3SlppRRSodGiEaUVeyCIBZQS0T9z+u128tG7uzmSIvtFUy
	 kZnfUFThyk4/GRy94CDq2lTwvDE6TwHB/PdRlvNQOeFIOE88lcutw3GRWh2IWp2UdH
	 pBPl5D2F9BHxODU76WcVPN5KWkOnWVVLkPyKBN9t7T6+XC23tzDes6fxIWmMJu/YYq
	 8fcIB2hmbBeiZdTCliflptTtITA0Bki7Gh/5bTsda0bAQ6tU5y0TnQjrnGrgIpByBS
	 GMJ5bnHd8IFvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA9ABC77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262392595.10406.15290719997187853946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1061594fe4cfc70f3f9d67e0ae5012b7eb582aab57e21558274b645cc3af129f
Date: Thu, 27 Apr 2023 19:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682623925
