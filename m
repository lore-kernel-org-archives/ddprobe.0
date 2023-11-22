Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCAF4D126
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxs6PjXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751A6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700657296;
	bh=ZQt5+rRCJNid4S5jwbVI143kcEWmxDRJD+g118Z4XKs=;
	h=To:Subject:From:Date:From;
	b=pxs6PjXrYScvT/gJgoPKJhIM10HmfZWCifZ+thQGZpzejHGspEyZGf5LRMagJnReZ
	 cbAGjOF/+M5qUk6RFnPV4aONJ+2Vb6XIhNEzxXGqUyawvX/x6duz31YjQDxTbwyIln
	 NE2zPdV7XU1lOGHh3mYV6EWNvV3nIx2DyBPJlBAu/zD6CyUIF5gq4I5yXdgfBQnfQ+
	 J1ZAI5kyMLhlzE603c4dj4y+NHkC8f3ovF/s4/LXUBnIyi6v4NWUd/ryIjMXcSnOhr
	 G+s5HpZM9uoo5OLd0GU+WAzHpBxVBvYYb6e15sIICpWDEan+V/yVRBcwt2lvaG1JMz
	 Gyb9HvJOXJzDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F25EC61D9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170065729638.25639.2422982335174225005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfffc74a511207eaeafe9548333c4d69a5f24fbd83495aea8e26f632c762678d
Date: Wed, 22 Nov 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700657296
