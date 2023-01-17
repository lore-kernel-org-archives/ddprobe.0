Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19A1EB21
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C59EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673999487;
	bh=NEHkqwVAinITR9NW27UVFQk+oeOev1W9CKCD8IEjQEo=;
	h=To:Subject:From:Date:From;
	b=bsp99f6eumN5O+dtITbwoOuirXmNWSlklcXqZwXMwUOnY7Lu8iVvggk1e08sL4qCw
	 v6+Sm/xeOF1LVlyjc1roFWjGuLKb5Kba4WtineoITmvcw5rEuanjbddMFBN7iTp4Os
	 1ZUCd2D4UJZ2uenmW7U8lXUNTs0jHTYRw21d04y3udp7fPXUvLUvY3Y0COwJ9+tTxt
	 2LYsCTGNq1n0cB8hL7i5zIBxGF/TO2Clyvhx5zz7K7atZiwMIDuHhKSGeyeljekA6m
	 3ugCSiFy0gjt6SedllszOTDX5dGYzMyAsjXOLdlAHggt7xPz2/2TzDbC7gcaVq1U9c
	 qy5Y/1PJagmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7C5C00A5A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399948738.18287.13358207812070582204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95551469566b03082ef0a3598f0bed8ab987f6fc42378b486f4abe31539b5209
Date: Tue, 17 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673999487
