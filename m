Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB856181
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5D1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671216087;
	bh=iD5Euo0TSH7M//ICAsHbgc5BggCSiDZCi/++zxlMo6k=;
	h=To:Subject:From:Date:From;
	b=ic1oAQgQDpgIqla8cL41U/fk/65Rrj93IC8m5XRGV/kqlMaeQDbpazue3a1ilFR4p
	 FdSxfczzWYxrw1HAVNs/SZiOjuNWMLfgnKoJmaiu7N6Nz3UW56r/iXuE5N427A26fs
	 VXQzvB7DPRerpkj35tJ40waeUcsomZiF46rpo+rmw/XApvBZcl93zrc/fyUFXwt5SG
	 xJ8X9TIy0s0QsUsDr5VBBIMhsLT5Q9QFprb9cAmTIJ62rNgPWzY1uAsc6FD7Bf5bxt
	 Aelwo/0DLB8n1Jb9RiMIpUkMOklpt0PYQk1zPuvo69C7GSP5QhX6X1KjGgA8Rewq0I
	 3pf7eolBa25mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E08C4167B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121608740.24143.9366312037165354093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30006593d2d86e676363dbf72eff25d3448383f523e94a993f8fb50c2b4be7eb
Date: Fri, 16 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671216087
