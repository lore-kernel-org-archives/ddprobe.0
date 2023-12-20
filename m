Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05F022303
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8GBs8ml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C03C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703074696;
	bh=opHHlHRLwZlQdbD2TvJMGfNkorAhtdxhMZJyWWxlLKc=;
	h=To:Subject:From:Date:From;
	b=O8GBs8mlZvrWblZTc0bQH1Cn7Y4IbsBvUqENU9gJVhgd3ZXqUELd45blW21i/Yn2r
	 vVLgULPugg5qYuJSP15VwGMs97sjssRBcTTcPiky8RcFQn0oJCDUC2u4cuj/Vmlxuo
	 y81sIJR94y8abPtUdHA8pfGrkD3nszXqNUyM/lilfhDzdWSd3ltBgVeBEToXxYV1Sf
	 OzOiBWXKUm1i15jd44dbA4ARovqZ8yxNENuadaB+dinQSc33WEByWzjIibgr88h2jP
	 WkBDHSuDdv01Kl8MtB45Yd+kcyk0TMyU+STslw8DMfTf0773xYwZQOrXDlZk+j5+zQ
	 JK1RxmL1emfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D40C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170307469639.30836.14418022233026391047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf7448e328b9691f903e47e6d758106b7bf3a26166a2f00703f5eb2c926e035
Date: Wed, 20 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703074696
