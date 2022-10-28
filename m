Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD90823A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78069C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666957854;
	bh=95WSnJ5VbRiKOkHTn0MgktLib+o9qrUQ6ljBJy9RMQA=;
	h=To:Subject:From:Date:From;
	b=Wf0tvrWpieX7Cd81vnoADK2i5QD9WORw0NyhlTohyXukIUDeY66AlG2CYsRYs5+a1
	 V0+Xgl/QHHmvJSAm2+A3BnrhoiBhyVgZhuRM0YxdemKOS/jHfuE1CskAxrUO3EwCt5
	 OgwTNzypcsh0KzyQuYSc+Diqv73OmObFd0gy+HXD1iqFJA8JLOVgEbbHqz08HU8won
	 vdMF5czWKjaUQMcooJGLXgBMT3VUGK2L2BaYlD8NTvRCF1lYLGu2BuDtSACIz0mx6x
	 1m+iyPwqH4laalMVeQ5cp6uPBr2nXKOfPNv4hOhWpol7pqQyWk7LALjVMXmsQUjXDT
	 1nkeo76xCEM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB0DC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695785436.11895.3088602263511991416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f398c199da8dbc1b7e9569c1da3ced45e8b73cfe5b92e36eb4a2adc7318f7923
Date: Fri, 28 Oct 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666957854
