Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08567C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4BAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663561253;
	bh=lrmdTyBuToEoLarJ6l7rMDFpaT6zErqT5iIz0E9tTuA=;
	h=To:Subject:From:Date:From;
	b=ZCu9FunvpmdnikCTzC+lE/jjPmdkHQDNp8+R0GN77ko63GPdhJvgJoWAvH4yyIl9k
	 8D+4VNcimQT+PBIFfYKJBuGszYhWk/2cgkZxdJz0Ofksd+3R5EuiqYj6uZOmNsx7Gw
	 DG/mTK1hoNxd+j66PJM3Kn2IKPqyNie/UqJ8Sbs6XkT/G2qMprak7PD2sNqrXY+rDz
	 uZQy+hsAmS233QuR2gMe7rqp4eMRL7WKPOtrnRtckOY+j2M7Bm6WyrBTgI/sMk0Koj
	 NjPy+/xxkgcZTEIIPSKgWQy4D0vozB9mh+yieFLxaMKpyeVp9Y57BFVaWGoD7fxinx
	 ZlTpdRDJKECdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9FBC54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356125331.9151.14453104713300647475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7480b96b3606d6ec3d344e1caa63ebb20ae184e72f89e2c53ad76318b6ffc5fc
Date: Mon, 19 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663561253
