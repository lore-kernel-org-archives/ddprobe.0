Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BAA5667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A23C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672678287;
	bh=MSbFIjZXCUL9W/ZnuU+Wjtd8IPWWdw0qZW08PploxKo=;
	h=To:Subject:From:Date:From;
	b=h6JLZI4DkKZbB72j1XIhkJTsxZK2UJygTndOMIPUMU4qDpPbHwlrKhqEGiUsY8EqC
	 761Cr+iIuweV23BDlhE/dcH35CDiRJA5Uec9nQAYztQzZTlplVpNXNWGlMekpoOWb4
	 dUMPVnNQ8F7K+WbEteisd4Kcvt8x21ofVvIxaU09kRkvvMmyG484aqnu7ZTF5lBS9k
	 6BgT9dC/gO5y5TDXyA9xNxngz1MQOJ4KTPoBYb/64lL+/lgdUIX+23ovpbYgjgz7+X
	 iNcAwAFwIHNxb9GYIRGoq1R8oDDlaBealcEPC/ENNvlIiqpICvacNLtQ7Z4BZZoepw
	 jbJSGJpPt0ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68368C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267828741.1068.17346024219035505300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ff1607842338f52173fe35d1d36cc2ed97a19ce321150cdf40ce0f8cafccaf
Date: Mon, 02 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672678287
