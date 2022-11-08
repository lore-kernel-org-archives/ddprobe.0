Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0406119
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E81CC43140
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667929254;
	bh=MVldXP0askAnHJEvVeJ2oiEOMqD3XzXPiP52oxcOqes=;
	h=To:Subject:From:Date:From;
	b=VFDhsWnjhkqaUakfyVuIHrpTWn5/aC37+RNi9FM8Az68suQbibYVXjuPmozi9Kt/W
	 sKclQtb6RP1Z1un4Yv/BA8EZ8zN3RnXYDq3MowBx1ivoAtqftYRMocCB02xQSuWFMD
	 l3hfBm4oehCt1D1BigqUzk3645lxmxzQ50cddnoMFkTnIRBfZaoyc0/KJQsneaNihz
	 QlYA8W22TF3awK4SWK6tMyEg0zY0yVztFVcp/8GfGyZsWtjfPHsvKQYXyffmBjNmu9
	 +XxEVaG9rPQuC1/xUxA3aL1koLCUvDEVvk2xwzCEWuHs6X11MdZiURG9ii4+begznY
	 sD0TlkJ9pyIQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54492C43217
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792925433.13313.16803146629860044777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf26982095468ef2c20b72880fa4490296fd7c4798904d1fda4c9f702b87e5ba
Date: Tue, 08 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667929254
