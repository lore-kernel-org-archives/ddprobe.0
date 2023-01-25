Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3D51381
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 08:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDECC4339B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 08:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674634985;
	bh=yut5nv1f+iuYPLbyZ0Py+dZn29TVWRNVyMG5NiW3Ouk=;
	h=To:Subject:From:Date:From;
	b=KE+xbnE5jnFvj4zZUs7N9GcDWukVhtG3yCQP/INjEGt6/PmeP/nO8h1pPMhkA3zgY
	 BtCbfauk82UCx4VbU2l6fCLBSmN4VKQ5Oj8MlBUlgEWuP+woi6dvUhYZ7TWUkk5PAc
	 a6eJK9JMnq7zf6KpGz70FQu+UK4Iz6tRl/pvve0CPpAoBbYmxt4ka4Jabh+vnIMYit
	 87yUV1+Zfu8XvIHvar/TCc/BxWc4Q1yRrWTxsKqjogiX/Gr9EjIozjFg63ypy6tJ+C
	 skqag/xYF5cawYSr4mnunFxHq1C7579YXVCc4GqocFn9HSqhtArm0pghHE2TG75wQb
	 o8BmuZKYWki8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AAEC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 08:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167463498576.31525.6201607851191922488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c08e2cd5992e76b8fd4e8d51d9a5776ebc9fc8813590c50fddf86c8cfeded6
Date: Wed, 25 Jan 2023 08:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674634985
