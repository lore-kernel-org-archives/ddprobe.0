Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5472C11184
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DAFC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686759428;
	bh=KkWxGZMOJsHlqbU0HsiNKo1MKVIT8EYdhfrp1IH9mMA=;
	h=To:Subject:From:Date:From;
	b=cA5PfVMuXQIk2kxndLeBYEue+Jw2Ufg5fjey+S8sn0uAsGoQzqAzOw2NBNmpYViE8
	 YrP2qRu7f5v59wHeLTuDPtW8mY3GDSIfKBJssk1gdRfk7AnhGjg7c7hZzE85o1yQiM
	 r67fddXKgiPLM/QF7nVXFU+iEwYh39QfclaMW7klNF6Kt3oqlYxG+UopVXlPU3CxOW
	 ilDXTQrURh+jASti+kGC1VS0JkHG7IbsORzKc5Wvcnosx6U6akJdL7a5URgIJaL0E9
	 3wl7s8dW1mI5wpvkq7SfHCNEAdK16grHtmkZHCdJUJU3f7FIoNOnMXZo3LNUCT9YbS
	 XiWAJvoSuI9ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E60C04A94
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168675942877.15559.14828165372350398169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15504455be7c5c0e5ebfc45391e1cdb770115fd85e86d2e7351f1b5ec63e3c5a
Date: Wed, 14 Jun 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686759428
