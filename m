Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F2A7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB66C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663496453;
	bh=SgqKP5iskkAxzGbFzDg1Ij8XQHyQLxLTxp+UAexhQ+Q=;
	h=To:Subject:From:Date:From;
	b=NfMovXwXvDFzwL/pLPMN2/6/MSx/UPH3NRyGQxhkOwQ3rLnJxIZj4z3BZWxASsywm
	 bspUpGdM7mrGcjwcBbxy2cewvQa86TV4SwBpnYXnwXqXI+n7jjiRR1G5YsLl7HWcsy
	 0h+N9bVcOPc4YBlQ14bgDWFHx8QKByOwga24OLbWEz41CSzRO9mqeHqfT1s+h6js2r
	 FrFWH8CM6WN8PbBNJKP0QFnGozmtDp9XehLAvM6lYDAKfj/MvPdNqn/JQRGtXS5Pfd
	 y+UqBgSbZg5R76l4CDknt0caPu2Zn+0Tz5n8xnpH3raJhPgI9krB+ud0RGTBOtHpxO
	 OG4oZ92SAXSaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5304EC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166349645332.2656.5114773515719833808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba920fa16cefebc677a180c11c90831aebd82d951046ee7ea9ca62e71f98b5ed
Date: Sun, 18 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663496453
