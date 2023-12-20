Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20B7171CA
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqEj+NG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75ECDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703056096;
	bh=TRY3SnYA3Eay6sW9YQnJBr07so8tqv6yJ4tJhTsTVOo=;
	h=To:Subject:From:Date:From;
	b=rqEj+NG36vPVq8JBWDRwk+jZ7Nt9rm+jBF2CZhqI1GskpWiI5nAfw6ncWwL9m37wn
	 EFEEaufqR745kFQhXRKuHUSZOe3xMGeRTBsM00zuek3nTZjQQ1hWEFvIIznTdi9J2u
	 pygWqJmQV2YWgu+Mg1vZKxsuztpySmsQS8r9W8wwVfhlYCYJfWdFW9SM+rgeDNS/Um
	 XtYVCmNGPzzxfNvR7Ed0FBi/LR1GiC81QChajZ+4lN/fPOnAjwC/vBKDaP7uFUrVes
	 DPg/IQZlaq+T8/VUSWOl0Wsqj3CfhZCi/qSnXmxk1dttP0cEr+6UIL0Xx48QRdhHhp
	 5z3fio0yC+AJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60957C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170305609638.31936.7224819179957788778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf0bf38e64c3c80046c29a29d1fed28ee444d2b2489e29123d9f2ab80d0d0cf
Date: Wed, 20 Dec 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703056096
