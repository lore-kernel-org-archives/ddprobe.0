Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F69E15C5
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 16:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5C0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 16:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689436868;
	bh=DyB74uiUmQpKdQfrmMs3qi7wnn/k2X6NRm2X68UkifM=;
	h=To:Subject:From:Date:From;
	b=unle+yIDImlOk6Wcx50PwRgj850JBBY4n7nht9V2k9ShmoGDAzZzZvuyTLGvakYuL
	 iKfjG1dcx/MbUaON81YdpgOan9kQDjq3O7k+O0DgIf/sdVX/Qz3H2mzSG3UVacnxdu
	 gofGh6kynQwWaDwkT4Oe/b1BFvBzipZkrLN8md2dh177Q4gDIT9aLH1QmEm4a1ssaT
	 aonS6msnCbmPqkAfBjq4iycWIFdJckt4wD98Tto0gskGwTEjw57D9gEqDofveoEsa5
	 M0pzyn03ADc8FK9Ay1ifjLr+WHexsejXFmouhcc8geQHHE7nLVGbfKEvR6fyyoAoIw
	 ydJOAjZrHOhNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5EFC001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 16:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168943686876.32231.10342501466246711331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff69acbb7be9f6cdddc97bb491fc53a73aff9bafb6debe4299e1dab64c0bf65
Date: Sat, 15 Jul 2023 16:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689436868
