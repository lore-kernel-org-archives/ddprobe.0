Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3FD12B69
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck4lE2Ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81745C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704614896;
	bh=HPYIi5WixwOLTSY6P66q+sQkQ7faAqH4I7dJO61v3Xc=;
	h=To:Subject:From:Date:From;
	b=ck4lE2ApfNlPNQBsE3E6IXzyZTnoxs20hHgpU+GImW8XdbMLuOH3gBrmJYSCpIf09
	 34e3G1285tm4IEF7F27Sln+PXepuImlFznBNwiT+3M/oenzXQGyUyu40AE++8L5gds
	 uqrYYTyyZJzIzJnc5+7yevPQw/GJ7SWLX8cFakEG/qW6gLpe0sPUuUgvwe++lWaLfA
	 AvG60x1dybZc8n3JYSe5MjOnDbWMZOhx9dS1mcThtQranFc7OPNxiHubHxRozzpWoY
	 Y6hLkKbCJU+QXCb2kswAVx08Dhy9Mmw3oznC9vaZWqhHTJaYIQejvOrust2wR5KG+d
	 PypKioK/vedvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6570BC47077
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170461489639.25483.18179219857347562739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f0c5112eb4a6794c25c9200c82a0a0ca8aa27fcae595f3b525d9c94851fdcd
Date: Sun, 07 Jan 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704614896
