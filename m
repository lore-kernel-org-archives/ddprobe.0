Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D75F7FA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 09:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BFCC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 09:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686994748;
	bh=wF6bnwNuESfpEDt2yjA2xCn5asDZ3EVaJDKxte37gVA=;
	h=To:Subject:From:Date:From;
	b=nmd8taCqkPkmuxTPDJhOv/lFQIpF06mP95gBMlfGe8lffu7kk8XFtU+y8/zP3I3St
	 vber79Uz4zogIv9bw3oyrp1Spf2HQp+JW8aRBoSXHLEVe0Zkv3xSMQx3Ww5DJm6k2C
	 JhvQ6U+63mYWmhKfRlnvW5sDpaJXaiM03fQSvaprozmDCLY9Pwx/bdeuLSsV8ymDQd
	 mTCJE6Oh9f3mujkxP/t9XZ6Nakx2Z2Sq5Sni+uJtS5zq6z7RCAad3P6/jAe2pjlC3X
	 e63XVsO/4LiumnhnaD0iG2nedjMFwzzVboflukuDJTdYC4nO+INUIMny7aWNBxiT/2
	 nv0Fw4to6MMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1019EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 09:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168699474877.15833.3273296402972338525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d55e450f44f3a4ec4d24070d4c3e0122ebe8e6334e87a1ea81ad9a78eba9186
Date: Sat, 17 Jun 2023 09:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686994748
