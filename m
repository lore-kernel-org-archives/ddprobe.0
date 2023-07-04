Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E05625
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 03:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E2DC433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 03:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688441169;
	bh=dgBbRMIr6NnLD+UIUmLxcX7cS9GZEjDs/iq1cERYMXA=;
	h=To:Subject:From:Date:From;
	b=pVqbziqKIkqMMwieOsyAx9VFym60pPjdq9iHl5pbCS/8KS5LbxMcCowpBVD7c7P7b
	 nz3GfbwkReUgIkZTgITXWXtMoIe7JZgRPkFeizX3kucOGcM8Gt+qBGTBCen5J6IrNm
	 xXdOjWwhfX9JrUOfNwR4K4MOLhwetlBY+K0Gp+gwcP5I53vr1aqVU3uP+FEn2D4ubx
	 GgGyVHmLS3hO9RGgMWw94wFiKRPuoXAWrJtBsUMtt1RbNqCzpXviT52i7gvDCQeBsp
	 BDkYc7WQJb8zpU82mPsO5Af36XqgdFJ9EyuEYSgKUBBfmVvrad3/BGSdcbI/Fr/GHe
	 qlnzBqeR2Zo+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A638AEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 03:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168844116867.2427.7654476979948065357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db707b6d99a4436386867cc05f45b4438cded325876114f09b570b260c4922dc
Date: Tue, 04 Jul 2023 03:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688441168
