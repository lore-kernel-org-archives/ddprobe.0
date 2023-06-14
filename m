Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFFE125A2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F4158C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686783429;
	bh=dqwbo8s41jubX3i/7FMfIQLnwEstsmLr1iYG+uuQC/0=;
	h=To:Subject:From:Date:From;
	b=Wu/DnWtViBKSxt4B8iYpudiiZxP/Jh+cpAOGEWxOGxCVhXLdtFkXaz9Ji3HummuM3
	 /Ko9MYm9Wypt+OqjvA5pi43WYOFadqwryK+uViahHziNXqMTQi9ErVd5SgP8eF/+Bj
	 EkQgF/Nig2vy+KGli4EsYo/NgCSEDU21IZBiqAOXRA5Ts0t+Cbv6GPma82Ud/DYNTz
	 WAl0M76d7151tBbuklwdJgd+/S6KdceiyqA7L/CWjAKqjlS8uEVHw+jOvy4U3jIge3
	 b8/HvTbxIdLzkYjjGMl12kGlZhuX23ZuilXXaBdS1p7JPPvW2TG5SZ/QTv8R0wmPmj
	 UZEPYgBwAsWQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF37EEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168678342882.25787.844572240215471006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfabc3b2d143a5f7168a82245f0d54539a4ccc8df6ce8d51801174c3146daaf
Date: Wed, 14 Jun 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686783428
