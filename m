Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B94A59
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDD2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666643453;
	bh=kyoYtRVnIJTFyQ/mYKaYxxaW6IiqFRTHffmWwTlphy4=;
	h=To:Subject:From:Date:From;
	b=pxBmFp5IOoVNmVF0n2fwCtIgzflwcguukSnvhFeC/F+s8nLzx65PDTUXCtglN1mJ0
	 nCjx21y8V4tdHEsd6quHGBzBT6GOt1UOSv1JoIoSZ6KsCD0FR3jN7BabXAllswGwKW
	 KwiX8nvTcgdBAuqGJWsePko8OALLDhLdtY98b3osA7I5snvPYzfVSmwqVJSA++PXxG
	 SMoZI3kk5hatkzhPad7gEbEAw36yoMHTr8tAtC3DmrSYpfDaOr/s56pLGcT8p4auw8
	 sA0sBd7UQbHPoUxlsCYQpoE8pugUGcRRKYOS0GFi0TGcpXGdHnQzJP4Sv0BcJldmo3
	 ki4Pr4IWwTcpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544BBC67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166664345333.10709.422315894812708508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef11adea88c8d9ff6579e65fba08a75eec5c9264737e6fb15d3d2571fd8ecee
Date: Mon, 24 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666643453
