Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE9236E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D93C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674279725;
	bh=uUUPqR50nh3/E/tTt5lb2mSGGOvXqJhfQ7E/yVtUV2c=;
	h=To:Subject:From:Date:From;
	b=WrMhl3LFUvm2e/hoP/xD1/MHDTYBJbnY/8y/aYCWKbm6vaCk4C0h+e5kPyacl5PtG
	 dDgkxSrUWT8RWRkL/J6juWu0SWjVGpL/nhpX2t0CUsGkU+jCJYKxDqK5SkfZqg+fhM
	 YQJx6oH0wix/gFCfzjXPKRgJ0fTPJZCQ96lxNP1oLfDzOqCv2fQnUQJoDjU2wyYuiY
	 DrbS5LKr+fFKoh3MMMfP1cBeJ4NgZ50wn/sRZyHFaZVSzMVex1Qc3pAeR+k+xiOKv/
	 oxXNvpgnw3QYxd+dtf2GjlDp9NIidD3gcbeYsN42baGiuBlWaeefDih24KLSzM9vSg
	 l22EtwCl2/UEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB884C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 05:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167427972574.20494.10417995610288027368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f9d8cc9562aaa7cd24ecb808629e4ce980029c4218bbd5f64361b33674d0b6
Date: Sat, 21 Jan 2023 05:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674279725
