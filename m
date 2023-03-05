Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0D4D2FE
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 06:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3CD1C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 06:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677997026;
	bh=iBo2uDTkldkFStB/8I9y8FDYRxGyBFVPVQrFWToSoXQ=;
	h=To:Subject:From:Date:From;
	b=CNSmtdaA9VHbN92QNzrSlmBfhf17oioOD53/kLdEqjRhdD1hVMXoFeA84AHq8MlDk
	 NxHmsp+bX917lAGhdcrczUPGeEbYB4e5zXAJdfq3efXQFBZqbvJY3A2sHr6or6sJM2
	 Y3NfyBmC2aPgyT/8h9l4R34t9C43UAPmT5ri/boVIZeg+8m21c9fjoC651SgcOnlfV
	 IfZLD5nfYn4B8jf9oVyxRdKjdqYS75lxvKjPKbYc3Mts9ENgRBAGvVHAhbJPwkztea
	 dGv5kFDxxFIWxq3nsoZJEDzp7sZ5AoHhsjq3s6Tca7bZWWkpIuFs0XGCtYiasrl/lj
	 1GfHi/mLhZmeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01D8C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 06:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167799702579.1891.12373625300215388098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966c3b8b199d7109d7fd04ddaac3fda1f90163648d8476f61bfb3e136c208b26
Date: Sun, 05 Mar 2023 06:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677997025
