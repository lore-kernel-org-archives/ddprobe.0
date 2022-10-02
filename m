Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28B115AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFCCC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664671253;
	bh=+ZgjyiLoB5XYv26OUpDcZwI5VprXLhTTBsQk5iwRaGc=;
	h=To:Subject:From:Date:From;
	b=oazpiwuVhziFOIKv/VSYOchLYogSVo511twceWONwLO+30jWQu8GvwlUAe4mUmVPp
	 aIAqpu96nZ1YfxVc7AS3QusXYiLxB5lh9qja0pfATgTgtjZ7gVtOFVlqtHUaG+iu5s
	 7kYey+1U7pRtDug/H/ARWA2TOrm/mymVeJ8DVZXzNLPE4aFujHLO+c10qKJ2t6uC6e
	 jp99l4bFbUlzAOgEORKXC+XZnP5SVJDkfiQe79j7G/qbRfFHiefpxycbaGajrJeXIs
	 vFagDHk5nXjBxyXpcvPaMlJyzqQES7kkmt1+ORjbmdGasVY6Fo3L/N2Txg2btZdQ9f
	 hmutDI1XLNLig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FB2C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467125333.28824.9383531964584028294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ea876616bb931f524e9bd08b6be013e985887f036cbe3f0e40ebb37e49b23c
Date: Sun, 02 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664671253
