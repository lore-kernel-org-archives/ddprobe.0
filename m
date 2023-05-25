Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3338B24141
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 19:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA269C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 19:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685044505;
	bh=u8HVAzWzjc4EmT44sKU4mOF0kvcwRbcp4N3HepYTk+w=;
	h=To:Subject:From:Date:From;
	b=X3PH5qj2pkkDs3Gt2caeOf4UdDSRDnRgm+IBoZ7v4TJpRfDXp6qCbqW4kk3HDsgW7
	 oagHpXKllecjmQPq4kopldAHEufcYF3JCrmN5KsWeQqIWU8v6mQ+eghvQuL7zzhn0y
	 eJtb+L54qYJj1bCqkFJae7l5bYs8lLy+zBUjJHTAht2o7rEWMgGLND12Q8N7tXdUvf
	 OcmeCX5xkTqxGzyNPcaaczOG5viuGQ2uAVhIkDOIfiXQOGAYfgIfnHyen0TNSiUk/Y
	 Dh7G76tGZ1aEmnCWF8W1HYCjDOF81XvZmB/O4QipELWXrC0NCOEJpMGTLWuQuQeI7C
	 BglPmdqWSZGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA56C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 19:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168504450576.17501.18112888533237656289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e116275f8d789502c118a9b2af08ef6e6df2abb990bbb4f27d3c1ba3d2fb7265
Date: Thu, 25 May 2023 19:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685044505
