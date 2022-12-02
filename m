Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E8C7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738BBC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669960854;
	bh=xPkFu1f77qr8WO1gKJtNAcKOcDRW6fJs4LulXRxISxs=;
	h=To:Subject:From:Date:From;
	b=nCMuYGy1L05Al4cluvi3inptxlnSQL8CBFGXxQvuoNvZnY9BtfgyMtBbBLe9UmJEL
	 R6w1DUvAYx4hhuDN+WQEtjTOvJ7UHhw0T3vmOJF1++IvgA8zPz+9RkiqkH2g6Sw7hS
	 jzxb/aTsPZQt1UpUZneDwWpzbs9pJJow2c+R6sli6QQjWIq5kjpfoc6VoiUq2zStA8
	 RP0j2d57KTZJKMoT1bt0ynQT+/kM7X1yBHsp59JlP+x6q3Jw4TTpqSXni2jzl47ojn
	 7Mf0+5U9ieAdeVmUl+LidW43CDQUrYMXmF4huXt8M6rwcLXXN8wQKRBtfHU2YaVAMT
	 wBbdBnnKDBjEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58206C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996085435.22427.17465131251327742813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1613a21cc5899347835c8a7da2b4d588af2c3a5a6c71c569581579b97232e998
Date: Fri, 02 Dec 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669960854
