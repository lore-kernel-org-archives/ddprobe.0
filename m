Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C9379CE
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05FAC4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679951585;
	bh=L3A1Ozb79VWDV93+NLJNJsabzwnFDMMJeg4/lP1zYCE=;
	h=To:Subject:From:Date:From;
	b=ch4WiNLgLiFY3w073bzs+hzrkSE8/DWFrZlsQQgX0MoPmWay2g2OomQV2XE/mpZr8
	 QixOaSBm1IcHQhUEC5Yr4F5YGUdRPEB6/DJj4UIQWBTWtmU+HZ6aCE2lxjgcb4GPpv
	 G617qw7n1i58rdU4SqE+U7IYWEnnd2uMcEX1sEw6Z1Fmt8HWsi8YKbq8f92TFK8KbZ
	 E3DR4cXsiZit6DHYUCEPLzeAcyW+zclZfeYPds7ZZTnR4j+EMIgnCNU1X1ECDiugAe
	 LHE7Y5Y/Z61kRwi+0XVCf2u+IW2kX2ZTRM52x4kqs4fDpHhj7Md41JcXoAVdcu1yqn
	 NShiW1mWHEhzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B706FC76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167995158574.2704.900381367349878279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0920ea2431c2f9b2a3fea91a00ccce7e8ef4a831d96a53a40827417c6b24c3
Date: Mon, 27 Mar 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679951585
