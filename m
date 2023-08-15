Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E29E1C13
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2903C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692072788;
	bh=C1pHNGPVKE2xmk7u/UnK+S05/7zOz+1rgGjSVnRV8fg=;
	h=To:Subject:From:Date:From;
	b=RkjdiF8aaYVmgZYM+ctCDRHdqt5tgr5x+oVKFM2oMBrKxPrdz7jaZJVpIm3xKPxnh
	 wfa1GekOkb+ZvzKdcf5n5yeazP58Yx4SAFUW+z+Q+c+DwXpDZTLvPepZmmyivamoJk
	 jqcoD23J69JKL1n7fCK4abEN5Zmd8LtKO/MmDGJ5616BF1gihQAxgwSm2dJzedVdDB
	 FwhpRBWUEHSl3iRVucghUpfxOnIHc+yrQonYk6oTjvaR24HpBTde/B5TBhuj7BON5d
	 b6kN2CVeYTzpLb2t/exD9+H0yGl8Jvd2FBG1MiRasZFB2q0YhriEiOd+ghRMLrZkT8
	 uJPO/inR8nsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C29C001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169207278866.14452.8171560836661774714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3cba9aa207aa7c853f71ad6fd0deeffcdb03763ce7a4891ff10105e5e1f8bd
Date: Tue, 15 Aug 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692072788
