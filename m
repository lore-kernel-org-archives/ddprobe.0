Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C349A7B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727ECC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666087853;
	bh=hgaP6fv50scNr7aggvhFXKPc+8xues2jYrTqmccjg3w=;
	h=To:Subject:From:Date:From;
	b=SnepD476+3o6o72PQkY8bTjE7eTj0WfWQ/COQkyt0yz8CCyvKKyXLtGIyNEuNEzj0
	 8si88NR9f41ap7s2H5mW7vBxJn9A/V2U76LB3DzM1rk0pkMrHwqLHkniulLXOkmGV4
	 Sad9OCZmn4KfN9oZxcQhVgiQGSI31/eg4z3S5MtKaNR2V8HIGfJDXYHWT5Hg00EcSp
	 3gH22o4O+YuKsZnRxRsPcZR2pSc1zm9eKscL6V5e1QHxnOFyzvAf3VsTl8HJ2PpRxe
	 8h3NDYGot/pPIFpvkSm0QWHpv/y+WxNuyIvPK6YuM/DnQe/IYaPzBN924iRzXFZdir
	 BH9PQe6JNdCbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F6FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166608785335.12828.18218808942489492849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1819dbfe3a6feab493b757b47f80af399a0ba0a15b26f2cbd96623b8b3080569
Date: Tue, 18 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666087853
