Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DB56110
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73026C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666308653;
	bh=Jqg5oRrV5QtZXuWAPWDv1xNcgPIIekObrx+G6RCoj6g=;
	h=To:Subject:From:Date:From;
	b=K0XwQiInFEpukag/OzgfcHXOiDedTMBi0anTxlDNc6eINSxveP5l4gV+L0ls0S+O7
	 cfpIB5v4acg4+LwgsgEpo6KIAPLt4zLnvCbonTMkdu6W+jafVaka0aunFNqdidKhCm
	 czG8w3H6+lx8r+Fb+VzIqJuug4Kdj5D+YyVD0hg7sRTE/U7x0MqowBJ206T7E/TRSy
	 z1IBRLSZpkg6uTrlKpefNVxAxOmbiY42dqe61mSxiXUmsopES/lYtn0KOfLBO0tsGK
	 3VJujP5sbCeQShI484+SZeK5vf/kgMvn+j0bQGHDdufEzqTwwqXDLmU4wp+Sz70Rjw
	 HSCvnt5jGW04g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EB9C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166630865332.21123.14186173174006167203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa465235f7994a5b934e59d3bbaa07fb852f77e502e89275d79b0ec6232047a6
Date: Thu, 20 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666308653
