Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652AD1FB7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2F86C433C9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687918989;
	bh=aPISMN0bacz7ron547hKZjBqMkIh+ZqMUVCE122kwgU=;
	h=To:Subject:From:Date:From;
	b=nVsJnbrPhWdsa6FzFBMZ2D5YIEt1Iesc5k4xoYoIDAM1te9BTIGHyTf2iYRYlH/9R
	 3HvmCSXUs1aHermXWs4KSF0phHbxfvH8NEFnAd5xDVGIAZVc06IsUQqFgKGlJ0CLDR
	 JcrAvxRrJiI9xTOMOmPkGGoAS+xkJZg17LvZ6tQHV/WnXypj7ZpMsnEZ09VspFHSL0
	 kCds2Mqg+8J8vWHlqI8UejKbSD5ITYFOMUPb3gKcGsEcLcQuvsCujGU7waqviKgg3X
	 8Ef4jrapYujjLcx3IvrRpz9wk16KTxAcAf9ApS5RPuZU+jLBXJQSyVTcA9L6obnHuj
	 GYfrGlVcdYgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF63EEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791898883.773.12984744522669656861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6f19f11e89c8cdd8626f9f4be75a28ccb57c7b39485c0b792b84fc1eb34fc8
Date: Wed, 28 Jun 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687918988
