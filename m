Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063526125
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le9GaiZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76105C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702532296;
	bh=Kz/he9Q4P0IagZaeWNoJJuH5gl1jYJUelzMtmXkeJl8=;
	h=To:Subject:From:Date:From;
	b=le9GaiZyuuttXS9UcCyXSGWxUBBC6IGL60oM4kxZ9CXZCfXmK8rtDTM1HwzR5oKd8
	 f0dlQ7RaecigFIjaXfSWP7xnPnYUtOosFd8dpvja9nT7qcfXIOKZ+FvV4Ue6PzjXbQ
	 7i+JdTOCgGsXowesoYcHjsx1oclOn5oAeJ7jXbY3y+ClWyATyk81pBLxoTb4BneCZB
	 fYYgKTJTk0OSsIKJf/bg/Pw+NqVzQQYkAmiP4iJvAMYoL2JKMPTgWbZdjZYjFrvwTA
	 HZsChkr3FPeoEvAm3fo2pGlAXuSjysvWQiQw90i79D82ul23KCKf8+uADTDFecJWpI
	 xoGSmkZqhYiHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D56FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170253229637.16491.14793311732933246655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782dc3326a1b457537777ffb98554fec1c7ba1cc63db02629dbc07b735363522
Date: Thu, 14 Dec 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702532296
