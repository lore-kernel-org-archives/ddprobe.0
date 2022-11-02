Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE2524F2B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68064C4314B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667421054;
	bh=RtCH3G9TZdBLXCA5OlPwzqk5rHO7VHXyUOgRDhHNm8M=;
	h=To:Subject:From:Date:From;
	b=ms2adeOfkkqGyMNUUoU4RJd3SByEv9u0TmwmavMV86sAcmBrTSQsfn78zqBfbtl9P
	 BVGsH1zacXRPEkiXC7xo05y1CIpV8xPh/AvzsXbx/zB5aIg/KwGe6RPWKFFpnwvrG/
	 g9/GzkkHYzcPBmLGQ12a2Qdw5YrHlKQxbSg/BPBCtzSSTy+Ay+zQYoQEXNrJPXTiuR
	 pEfq4eqYBiMx2yVsqqLclilbCgCbl2dTjk3qCdUm45hfRPLWrvTmd+njKUKAbexvKm
	 Q3K6VC6yS//7gb8+rtJQVnlb+RgAPhqu0zGqKMbG/aT0t1Jdio/2y9zqgTbYzhFnY2
	 3PeKWy1Tz0K7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513A0C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166742105432.6385.4494914157143382289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c3bfa4e605ced5bfe23290c33c3ff98851fe99e038226f042576be90a6e30d
Date: Wed, 02 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667421054
