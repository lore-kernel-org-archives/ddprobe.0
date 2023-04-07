Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520D0110E
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 07:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC0A5C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 07:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680851886;
	bh=71FZZIXfI1D1F2rFVtnj3Nvb6mvuEE//ty5ZL/fEW98=;
	h=To:Subject:From:Date:From;
	b=UdwQytWp4fRwMQanzxAEQ1TV3dHrDyH86EbGQpezj2sBpvb3hBBQjyl2mPy/0Ycvx
	 XnwgA4/joRDuMRIUiHcfr6tqG7Ca+TQpnlLiFPikMpCuJigBfLfgQ/VQB37ZItV3ry
	 iPAI6VrotEW0B+ek0UASd/y9p610mCCEoHqwrMb8zjQESPN2R6TQg2Cpxn6JX3f0sH
	 YtSK6Pc2yyUd9T7I1kk2FJA89Ua64sDyvamCTBXfkWFtB6aygjEdrZ6JaTonjx/pI2
	 EbMnVQ0rOaoW4ikhXREqSdcSSTmfH+YbixDJHTfhh9toFxv+laubnstVhfSNmlQmIs
	 DTm2eTTmEufTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA66CC6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 07:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085188582.4444.9892067479677721730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1eb1659fd2d4cd3a1faf8893f13bd5cf1a9c0474f2094e985fbfdee8370fa4
Date: Fri, 07 Apr 2023 07:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680851885
