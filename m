Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755D4F9D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9826C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687375388;
	bh=6w0QZcT2/I6PpuEKrfB6LF/uBBR30IZxwAkx7zY/48Q=;
	h=To:Subject:From:Date:From;
	b=ufRRdtRAorB/NoHGmGffpVmT24Oc8DmrpyE6Hul/0kGEL6+MEC//QwwFlZPK0DY4d
	 U8sDIaXcq333j5tsWC/iznubVJHxWy8zo4JZyaifGtNoJhZqQnuW5fb6ZK1e6nwRV3
	 3gC/C84FAATM1u+MNTY6y9VAZmJzLm5HXFg+qMz/4glgYYe7HfTSiR7mGZ3IGP36dR
	 GdtRskPVYhqH5Ct9g6MtUlA2hkmI11BgaLjKRz3NlxvEiXmdij8PPDSweDPyfCwOpl
	 2OXivT6HltBHlV4ZNIEjXOb6CJEDkbKx80RlapIl56giZxDUeDmI+RgaXEw9i/X3CR
	 ajg+5fEm/IYjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB72BEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737538882.1466.10473755769472329513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9dbf2ef960aa0f1eae999a65320b0d8ef7534c1c24551096be060581ba303b8
Date: Wed, 21 Jun 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687375388
