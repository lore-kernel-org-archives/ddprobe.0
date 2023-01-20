Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E007474
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C15C4339B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674252725;
	bh=0R+S7u1iDKoDA25T7k0vrB+yaDgNf9jO2kgeaWHb+NU=;
	h=To:Subject:From:Date:From;
	b=hRPpKBXn3V4rfB6XYNosGO/ixAqW+mA9faGRkE30/YL/f4g+d22PfnQDzOY9fk3CS
	 vzC64A7klztJzRHcfsYgpcWEvEMi3TmrJ97Lv05eS5WdkCbxDEQEBL9HkTSOBpkltm
	 SpeRMLCEsQ6TQvTwXkuq8Ix13j4l8EG2alsdFpWMW17VuN6LgUpw8ncFEMhE7q3bRd
	 p+Ra16UCCfOzlv5ujfUVSug2MMioi/3dEzUYfRScVzqsbYmMAjxuKpm+yhqeLRxp3s
	 xp0h/Syu4FcL1Lh64k2bhJdh3QOVVAIWC1b7NxwdwxNoyEOqOzHvEbPjLnl4tN68UP
	 ARV0+8blxhYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62B7C27C76
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425272574.30223.10582973790555805369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8da82d989f2faf477300bc963d6133c19d26adcaf8e76f59cb5095a0639ffa
Date: Fri, 20 Jan 2023 22:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674252725
