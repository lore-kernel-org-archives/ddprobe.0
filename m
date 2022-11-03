Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C926B7E2
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7370DC433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667454054;
	bh=/qNxiT7mpa533+5La1WMLyQx8JuDTKtJJq+dI1TePME=;
	h=To:Subject:From:Date:From;
	b=aN+MG89TuGeP4FT8DRN97kpyameXVw6R1R6Jrq/WYzvOVEW2zSdPx9RyVKfieem5E
	 QYzut29z1xUUY9HAIEFkCZfDCEuzzdwWOXsfTfVR7l+i3PBKTu3uXuA4YpapCYsJOG
	 q0RM3PHKQerjoMjV/zICQs0xY2txxpRXtSv6SRWKsJ2XmhTvQRkecI5AE/2esE74Vo
	 x3dxTFGLKc+IlPrXy6AI+J90B64njbI7jtunt/3/Y4AxOqY6AjeD4h5BdJYqymrYMY
	 tt4NH4I1MAZ+t1t0Yu5QHnWh7FI/qfo5G2WliuFh7IWoXJNSoNIEc7X+HYJ+y7pEJA
	 54F41dC9/cjgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526CFC433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166745405433.18272.14809667212517289432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01165721d11781d57859166176f3b357c61a3adf5788442f4b0d728ad1a9cb3a
Date: Thu, 03 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667454054
