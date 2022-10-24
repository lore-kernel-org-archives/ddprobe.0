Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8237B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CADFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666616453;
	bh=yjGJnI5ZZknWw4yYIn+9T0SYiR4lE3YkH00br0+pHOA=;
	h=To:Subject:From:Date:From;
	b=jpuq9Wubp3W0LW7TJSlVyZ0DyVaFzEpeVbLam3FOJUPk+S4wQGp9pTskkzpg7n8Jb
	 oxK0dJwPuK0enCymonUPbINFfYJB4LgbMfu2ePoMmDND2RQ/7WEZHmRx3+O5X1atrP
	 SVBMb0z2dxSKoNRfQvknJ3PSYr+ck6xXOa9rU+wivMLkL5HxW1ZQhz3W/uhWsgLIUb
	 AqnDsAodz4IcnaeF/y0yV2TX+kjRxcRILYtw/0h3ZHEOs3p85JlPGthvDnLAVOunHv
	 8Yl+XH7CJ5/vUNSeq3aY2WqMFHFvEPEl2iSf/C1Nlu6KrYhOSSfd7FBbCnP58MGGlW
	 HfAF54r9APg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CEEFA373E
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661645334.23261.219442872811996848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371927572882d69d53e6397088375ddd6edff38b893916afcd806192049b473a
Date: Mon, 24 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666616453
