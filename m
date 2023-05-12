Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDD439D
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 01:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5722C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 01:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683853445;
	bh=qZnWO9rYgIBXblxaoSVUFfK3umxpxSGTALct3+WKs0g=;
	h=To:Subject:From:Date:From;
	b=VRckV3BY3TBuajq2wm1dsNK7Rxkz/WOwaHrD2JoVlCvsAgTZ/6Rs9nTLoYVHi7HjI
	 lVi/WXJul1E2yzUmlWmNgjSJ5jLHo8Ew/BPkDfECF4bwM0RK3XoyyY7KfRHHWbMUeo
	 RhBlMpxaueFX5u7mTzQ/1yo/678d3q/MoQSvLWBpr9jPxPKfH8oiJ+Gbkke7JEn1Ou
	 SiqhLoqLJP1LCYYk0Ys75EjYEAjD6jH0i2bQka8ynhMcahbqzAMDqfSEODGChzZtuC
	 jmDAD7t8Nj3cciZdC9X4mnCaHkzVb6QXXdjtqjWJyj4pjFU+7DcS3VCeDAwIhm0CPF
	 Krktc4/nF28oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F87C7EE22
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 01:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168385344579.25764.6344121499811162289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298da4b98fd1198561feaab3aa94548d78bb7895b713fde679069feeb93e7b04
Date: Fri, 12 May 2023 01:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683853445
