Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADF11FCC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726C6C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663917653;
	bh=GRmlF1+oeZw2n0GHu3JmLZrPPPDsmp5f4BpP7/AVS+8=;
	h=To:Subject:From:Date:From;
	b=oyJd/5e3m3v+pSdtsPn7YXe6h2uorLQ5fvcd/ssSAyqEMLI2v6MD0yLIdwP5Fs3Mp
	 lOXoPOHh2cScogfW/pM1SgqF3BAIfWP0HRW89iNiMuo4sc4e5dE7UrHWwIPSwu7uYa
	 pWTGnlB7ZzaCMz572M+iv7hSqLVu8PanGoiZLL2NStJ/ROy1HWF4Lpf6XXOJBSo4Pp
	 zh3etIWgWg7iA/o5Fb2XEv2Xj/Nw0opnO7J6z1OH+ykk1coWHPh2dBijlSWLzzLp4Z
	 lALbz3X1I8gYZVP5z6bFDu/D/jLhglB1zisJEquQlThOLq6Pd/7EqfCmPqd1mgNPBx
	 l94SAnISLmLzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57135ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391765334.28650.17466094363982585951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea6403dc8107c53a9f29380c11229cf2bcf21306ee45b9ef4ca96df354ecc1d
Date: Fri, 23 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663917653
