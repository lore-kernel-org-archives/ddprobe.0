Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183AE7470
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7IrxrY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DDBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700246296;
	bh=2RyV+jJKYPQKILit7sDfWVN7470hK2Q/kGlnQ4apfLM=;
	h=To:Subject:From:Date:From;
	b=q7IrxrY0peDJ8kfUDtOVDZYsBiAPCzoD+1MXfAr3xG9XWHNokqc1U207IpsTZU7Lx
	 WxyHzLgNOQP3RRNb2gawYK+nTFUvxTWfbqgzBrlyj5pONPny5OZCPqlpsbk2Pm5O5e
	 UGzUrNi7FZfhQtkDUBukzjjxCgLZvgRLERUe3FqYANGwMVNsucl0Tup778ms8uR25t
	 wNa4OWM3dWI4y3GnmLV10yWfCGz6z/V83OKTibNLENdzWRqeJ2I9H6Di6vdScPA83G
	 uMCpRd0QLG5xTUDMSJTmYLvhg1cxGZQ0bcGKnBUUTC2B0cFLuYhyVMIQNfznw3EeAb
	 3UzKxDCTM4acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73361C072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170024629642.8531.16607882812947504229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1eee02713b677018a6ff9926272b3ff09662599256b48e815cccd88f9f1fd72
Date: Fri, 17 Nov 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700246296
