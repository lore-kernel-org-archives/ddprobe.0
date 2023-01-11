Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF04133D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 895F1C433F0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673458287;
	bh=GKHQEPMIr6Hkng7YPAWNrLOgXFrArhSI474RRO9OTVs=;
	h=To:Subject:From:Date:From;
	b=THE6bKN1p5rk5GwkWHEhUQsW4PF7uJVzBKiV3jK1XIBHuJl7ytWu+DimTS7GUehbi
	 l7PPWVenJdj6oPgLBTFH/gbOLLowFh0s0i6O812Cq7WZQBXYOWkJNbMs+e5NEkWkas
	 LcxRgNd17UIVLJRlLF8g81FE7oLBZnY8Ei03PoeJvH+nn0X1gE9KW1fFxn08hQEmXP
	 WHsN1zaIRpmU2td5fSt5I+l/+ssrx3drLlZiQwXvhEuHAEvwYAfIySJcbdkR1lfTeu
	 dx65x8mxE0kfSYmStDk4ZshXR2/TIRAxxXZWyCOxawoBs/Wh+ck8LnwaRZ9I629rVl
	 EsjmifCNO2PbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7032EC54EBC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167345828744.8931.5633587075257656713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca47ca9f905b1c4a7632e08ade2ab2dbab57a5fda660a84678d1efee34d785e
Date: Wed, 11 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673458287
