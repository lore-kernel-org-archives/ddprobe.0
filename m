Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D832C259D
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837F4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671213687;
	bh=f8jXoTWjdStal0/BeZvr67XHb+CvrwUcU7QtNKy2Vhg=;
	h=To:Subject:From:Date:From;
	b=jcmA5DumlhG4ILKBzptvocHPGKxhuEweToxB+g4cVwGODeLB2Q99V8A1lRFmpVrTq
	 idL2mmzUOquKk9BK9gyuSbKtwPLOHsZQUTBaaic3zq0bRK/k9f1ALy/Mxh3yzBw7Sl
	 4BD0ge6f3tQEiHdZYfCG4GLvvUbglOkJ1AkGPcPpco03m0Eoo/O76QqSjARI3m2k6/
	 GThRfKw6mgdgSbNfkOitVmeND35qGGoWXijFdSaWVT7i1XH6N9VxJeVn0+BDwGmhzI
	 3IjJ8CUP4MSzQduE6NL2AvAA+W9bEdg9LhwHJG4d2DAfXaB4mBtnBMrpvt6ijIhU1H
	 aBmRMfwj5vwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6597BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121368740.26252.14994189125406068496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8250ce691bbff17503a2f379a2d55b19789b4aee659f847ffb7d5e9728d5c1
Date: Fri, 16 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671213687
