Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A41C1367
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 08:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0204C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 08:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687596788;
	bh=dS0gJWY/vML/kGocjYUf2gssD/28sxBlq61JqSJbP8c=;
	h=To:Subject:From:Date:From;
	b=feS7udmEwg7YElMYEsSbT8bJhWxpLQe0lvQeP+eUVnOWjIWajzy+Nh8qEjuu70cYP
	 fhzbo5OchQY21t9jYvv8f74ekiNne3Fu5rKKhIswdF6g000asrHEGhnMKvEcMrM5w1
	 gM+ALt7Sllk+WsuLi8nmHvuEDXheX/52oz1JBo756NDpdxXGrPZ+6KPJRk1FaRwz8/
	 g3GO0r5HYMxzSeB8NmfYJ+zTP5/aLcrMMsUTf/tUospkUD+eh4fmlr+ez6JMaiLkOj
	 TK1iNQ20NXqPLVxhT+OWsJFSccge/3oofcVoP66Ac+JKebF/rCK7ILqvZAtBBQlWXo
	 znAg3lo9yKFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32B0EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168759678866.15219.9940767635996624742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d287c79a8bb2c7655e7d5d6b6c548d6634cc70b63a5b098127a855f1a843e00
Date: Sat, 24 Jun 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687596788
