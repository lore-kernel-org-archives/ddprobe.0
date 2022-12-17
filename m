Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BC98F42
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D1D8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671316887;
	bh=dnCCliVuEyGUapnZ7+HXoYEUrnMEg/Zcdi2K+bODV5U=;
	h=To:Subject:From:Date:From;
	b=JNIMZn2leCMDLGpfTBFBFkpqX3k3o70F/XnY6Y7qOipzc3abDjpGdpKou8VdcudUe
	 7es3dNxAN2hlPi+sevtJVIORqE6TWYlog8xT94eWN6tHk7ILmFKf1gsHXtgyt8KgA6
	 tjf611U9SO6Vmq6DXND2ZO50h3fVHs4uCZqsaB2/cXXI1NAIv1/r1HpHq3ZdTpb+RY
	 PX+wpymwN3n6le/uUEw4DZWscPnSq/OrMVH26S6Gi2gcLfcam99XnXakONCPDczyud
	 z2jUkyH8IPyl+wgrm/2d8hbVwAizfTqPD8PEfJXpNAGjPPLAVjk+lbscUzZf3xQ1uT
	 e/3SLfqayeFRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DEC1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131688742.1317.11236139603834687942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa261fe360c35f3524e18855a46e7f410400a9bd0b74087236e3f0349173094e
Date: Sat, 17 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671316887
