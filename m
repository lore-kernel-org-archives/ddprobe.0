Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780913FEA
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxlruow6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844E8C433C8
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700412496;
	bh=htJhXYETrrm+S95rd1d/CXLX9M9v55qSD9apwz++OZM=;
	h=To:Subject:From:Date:From;
	b=kxlruow6S8I6i87qfrXY4C6si0A+ID8FzwJLLKHoA/u415kzG5KOaXzF+I//lYxyR
	 yZydps34hImJ8BTl0iZ4I2zHSzA47jg/nVMCGoGjfXOygY1HdrdNippCwRBJUUnGjH
	 y3jPOuI3uTlcmex/jnjQgqYFkNWptQUmuab5LjUU+p23CbaGliryJflf14/lQTJB9o
	 pOWOUYfen3U0bp5RnlMHfvYN1Jy47dVHAvwDzsvVQTG3mLTIuoVN9M6mdsduVuU/kg
	 igusIwvUkRQpJQG4ELoTzpZYQeZiLWBAsvlGvbLL4Exn+nOI/T/7zlIt8NhL+VMoWT
	 ZQmgnVfrkVEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675F7C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170041249640.31410.9938953475744700841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9226b32608eff55eb26397907a7eeb60daf08c79e67af23435d82dc234015039
Date: Sun, 19 Nov 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700412496
