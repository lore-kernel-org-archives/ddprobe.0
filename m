Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12C27C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E67AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661587252;
	bh=DBe1ZO+yneSWsXb5neE6jG7c09Dn7zCfR9tMRmbbbCQ=;
	h=To:Subject:From:Date:From;
	b=kpweVZ3dJraIfIRp2Pk3t1QWS8jss2YhKhdgEcVkE4bWvZmxiSwcnnoGntCm8sLhy
	 QP6hAZKxBsSnFI162YQ5ewOhg23LI9/B7ar1/lzIlbVaJ9XtBS/D9jHej9fapY8+jF
	 Xa3fBsqUOe5W4gCKo4QgcHgkvs72rYyf2+ZbKXsSn+Op7kKE0ol5EnMhW9g79ba2sb
	 oofoy7zf7I7TxoMpUfxB9qBpnLpIv7djBZtg+0plLGN1PJM1xzbqXOHJUWHp3rn7um
	 BAH1Y4RxjDb91G4I2xB2CdOzvaYazPG+LcfdCeY5HIfRgOTW0+48ok6DU8PccHBZfH
	 5aBItb8trOIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FE5C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158725234.23944.14388432775144194729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44cd8579734f0dae2d78a0d3abf36b4b4962586531d34c75987888cb7fae5976
Date: Sat, 27 Aug 2022 08:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661587252
