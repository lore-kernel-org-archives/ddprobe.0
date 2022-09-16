Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03CA20EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CF5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663299653;
	bh=j3NWaT12ZjhWDm58vvU+y1Y352B1f+WEdXzjJYBEqxw=;
	h=To:Subject:From:Date:From;
	b=Aq4hjOVLh2/uK+WuA5yUwubx+KFuYHBdOuiNugZ9k7AKpFhZ9qGy1a1CWxxu13tTD
	 2968dXGxMKWp1Jz3UPVP9xf+Afq8UODsvDsFs4Ha1KpWYz+ZXz4Vd3TNIzEyr6RKeb
	 kQ+IXthlolZek39Vebf46CLZnvpNROrg0/UBPMSVNdA6q3e0LTjC5hcKb9FlGVyGih
	 rWIFBdeWG1GB0/10SSaRFEYgvveVvJ2CfgIlI/braTKkxYUJhiifSfdXPoz7Zkuoiw
	 yuUh6g37tdWnuUE2GCAiAUHWUqJ7h58TDegBywNiwsgZrBQ4XMCSO+wzTdvAnPBgVQ
	 p73KxbLD48o7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5166EC32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329965332.13713.1751373819657638796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708728f9c98139aa76b59518836eb37ec277d5af0d96f21d41895d2ac2327559
Date: Fri, 16 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663299653
