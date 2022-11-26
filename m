Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10D5612F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA32C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669504254;
	bh=9/vhCjfeVair/mOmXeDtKvcgoSKGI8v+PkiRob9l0Vc=;
	h=To:Subject:From:Date:From;
	b=RAyRctdzGc/sqrwboaTgEgj1ap/v9TLvWamhANwZP6ysn0ZYx53tXMKng7V1PyVaM
	 6kuau3aQD77W0d39WtKN9YpGI9s1kuzp8eQ5Qnzr6oiERuEMuSv3Ox9T/yLtbK1OxI
	 Naiy2xICQnTXOPcaE7D1362s5ii4Lq+v6DhNBlkKIIk8Cnal32RwEyJa/FDcgN8Tf8
	 GHt8qxFbJhVx1IdvC03fHL2EWc+9E6MSkcJKfGPZF9toJpBo6PmW3H/UWcOzESG1wp
	 CuLDvt5LhCS1gTiAeQtUmcPRv/0lUbMyvL+wS1CN1a+M1dEbbIh0BvN9hT10YlNRUd
	 KEzfe0K2w+t6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8E8C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950425434.9493.13605964569625825363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ed165f07606fd0a8d07d51bdad6b7a5647e7bb77378f6378bbaa281e5e08bf
Date: Sat, 26 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669504254
