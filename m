Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22317E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92FD7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671452487;
	bh=GFeMEw4GBFsrrSrvX86TY62hJXwUo21c8oqLLfWSJJY=;
	h=To:Subject:From:Date:From;
	b=LHfFecWOrEXLpppOhx1C8AxEzT3FQ7T/71C0l7Vl6KyzLQLwZkQg7jEBd52JKnBPe
	 okNwuUDPAjAQkHBCBoydC3OWjudz+3p3YqqotqeS5LtGBn/vkquKt28hLjiokCluKG
	 i9m0OSVIx30UdOKvwVTuyq+qZy9d7G6U/zeGHsUbRgmB0q31OmyI55FkVJDlQMl3vH
	 IDHoHuBEMmHDCQpm6WgavXbQiijiTdNGKWy4LUMLIcmv6K0cq/6vbOeM5hiNULhSde
	 v9sMdGedL47CncW53DZq9J7ct6pFpZl/JaSq807PJ6WNciss21KoUU0LNOu5y16ase
	 CosWkouSxc0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74806C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145248746.21159.15242131517249224091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fe48df34694c4621b25cc5aba8066676e33911855d70ad8ba26ffea76ec947
Date: Mon, 19 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671452487
