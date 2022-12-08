Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29AC7EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A79C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670496054;
	bh=rXw+Qz7sOSTxT3udz9lE9pO8rfEC4Oe0jaluL5tJt+Y=;
	h=To:Subject:From:Date:From;
	b=NIGI+lw8967qfVP6xPJur6R/A4HlyBBN0XLLmzBrl9XCI4i8Ijg3vL36B8SHEJ0b2
	 ZhdREeA6akTTgQGmNOvpCBQTrlZt6e6B+wNhbJoDH36pQQvXN9+Fl4Jfr75BF1XFsr
	 WgNesBFeq1S//BzJ4Nwxu1tXaKS+8y4xbI/bDOBcFfvyaEjBcma+zkobTDEaM/Ccqr
	 JJ2Zuv9p+lznSTtEfYN/vIv/7YnjY4F0OZUB8Jmeq2yh6ZBTm+cz4uC8BFhltNkdn6
	 kGqSy+w5jZU3AahyTEQG7frukDv7ov+L6AJOfwMkZ3d0IpHUeI9UCA1zC1+VnVCxDW
	 Rc9twNbxbkx7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C093C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049605436.16227.13235928143507849969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dddeb7211d53a2e5bd4336d4956b8682c756d97f1094f4b5ed716e817aa8bf8
Date: Thu, 08 Dec 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670496054
