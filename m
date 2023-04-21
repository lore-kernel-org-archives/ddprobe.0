Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA4F3C05
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18CFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682116745;
	bh=RiYbmrfrS9ziJCUQelWy4ShV0Makt8K5Q/OsnNPWF0U=;
	h=To:Subject:From:Date:From;
	b=tfY9nqus/mUVCNS7XVk4XmZNUJ+VCfQdjnpkok/8vjRDHC/bRhd0QzRmMeCsEE9Oe
	 tm7QsgnxeoFaGPW22dxH6f59lKnjKGzjeAh7QX3XdYHPSYUZliElDbv0JFiu4UecOp
	 ZC4pLYfSryO/8eZCvHo4872TM2OboMZUIvdLhu1/PjCxlGEYntnLG2HEZRtjyeUKrR
	 Vzpfef2floU48ZlmsmxGHEkAWpAaG8uk6Oi25NaQrRMc3AIk3/x1b5pAa0gtrspaQA
	 Tit4d0ZtFhO6UUVPP3YVGk5a8An8HFV6Wel+ipz9kxyyDZcAXILoQWHBoRIz1hd4We
	 TakgPhWy74/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AFAC77B76
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211674578.3643.11352445476468647474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ae311e26eb62c51377229f09afb89c387418b11283d46580922c6065d4d398
Date: Fri, 21 Apr 2023 22:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682116745
