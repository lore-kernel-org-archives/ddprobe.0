Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E62B20E1
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 13:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67CFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 13:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682257865;
	bh=q9sySHZ2KJ5LH7SnjD9IjTALFcmPBMhmTNf49qpb/3g=;
	h=To:Subject:From:Date:From;
	b=gCjBsexmNxdA2knnadRXGQMlzSZVi41KbWTpTCmT3B9agGUo8uv8lSwtEbCQ0G5x3
	 efSzJ4tInrjxx1R4lC6fMhFbLE3uEUIVWTX3eqw+SMm7z060RdfvSNX3/aHaLUFtyR
	 W4xwUHUY+3qIzNeZbhZH0vyLW5rq4VYTiuHrOcsgzvn/3MLR1Iwuuw5Cxi/gNvjyOg
	 seKsK0x6mMZXNptL+lGa2rE3o+BKDDQ5FLS/tRlgCziJzCzSU6HqSVHnuicBplz1lL
	 ZXdhXrrBDm04Uv5fy9cQtlGd49URJg8bAcIoTUjF+S7p6c34FimB0/NI2WPSANTJlY
	 +8xr3ZSRKCVqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB09C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 13:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168225786576.16668.5429838441384870253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba53aad894413c4d32b23901f58159b55aef0582d35360c19662da7919a9e0d
Date: Sun, 23 Apr 2023 13:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682257865
