Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38286622
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B8EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679907185;
	bh=zK+0zM0CLrRHWBXmScCY8h5bKhQJPRYyHJSnA6S0mYo=;
	h=To:Subject:From:Date:From;
	b=slc8AGmAviUznmQMISvTZ/XjrgnqeBAVYteO+G5DYeCGIxQzUETgJvK/XPj9gjXCX
	 jO622NYShmWuCWhAs7OdpxmgdbOHTS9Yi21O/O7KSZOLn5oSgXdyUBZq9ORoGMhZLQ
	 VxNjBrMz5/VSD/eyP34Kw8VCPBJyHi/+T73Xg9S2V+jiMhXLTvASmL5pvJScJEX++l
	 /FElz09yheD1OCWEI/nN7nuvV7c2BOdRo05oXE96Aj2zYySy21FAvQJ6OhCgEmN7d0
	 7g9HK0hWZVjIJ5ON9ZIsju9QrcLbqK3QWNxge8FFvX104JfYiCHgYObv9zKTZ6lZzI
	 CfxbTr9d8SnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66B3C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990718580.22760.14413128584308437920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66d6423454e89663cb5805ea09b162c540b759ca8f6577bfd0afe0ce707177e
Date: Mon, 27 Mar 2023 08:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679907185
