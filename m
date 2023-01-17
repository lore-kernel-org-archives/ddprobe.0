Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E782D1363
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 977BCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673937087;
	bh=njEeoK+3GoOG4RV7Snklx9IF3q+lHOhvuRa8++GlRNY=;
	h=To:Subject:From:Date:From;
	b=fGnYt96KXhAmy0Gbp/wRfbXa8cxpqNdSwcFOsGgsE85BVjusExuCw3TQAruovrldH
	 WWiVlflROiq3TqlLkwzIki+/v8C5KDgMyu2nkSH/XdDDHDxhBx3RlgkFdf4VVJl0K9
	 SyOkh80XZNB/+RvU+Uu5wEO6oiZirzG+snLXZiHT4lUoy158F+3c6cvnNMiIDaVLuL
	 p0tj0EyYVw34W0mn2CqpBUSYi05ZTwUB/8XvEpEsCQR8rpl/gWzroripwg7HS2PrpD
	 QR6ROPOiz3GVUyylIMYlLybQGfi54jDtxOIYt8Wy1LJ5KvuVwyD4Z88e1pc7b5orc9
	 D1asm+52zSZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F60FC3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393708740.16976.2335474205619388866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622fe7f8ca9ad52d4c6286b642578483279f414eb32702b085b3980a875937a6
Date: Tue, 17 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673937087
