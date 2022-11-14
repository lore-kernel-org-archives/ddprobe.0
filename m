Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1897210EB
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8749C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668401454;
	bh=PKHFQMeFEyx2yBDZCnRfqx/pTlssBOny42cQr+lRGvU=;
	h=To:Subject:From:Date:From;
	b=YlFvuNwpBbjFKL6DmeKScaBri3cF302EFYO+AKfo5d9mzt8fcq6eLCNdACaGTNiig
	 4oukrJZf1qG+AdyOj0PeTK61cESeX9KEGc5o3gEel9gcqgVCoPp6gx3YdfLXmUccxG
	 8jrA8tFKQENWkTJ0lRFmFpV2CD+9IeyV8MM5lVc/wbhgT1oV/Dm6+4LOEaHsARITJy
	 v9U41/oE9hqaw8ZRYVQdqfQArgSZdk4KySM8WUrtywZl489qxNrNTetzF7mjJ2iwbZ
	 I3PoAxsyFYufHvvUlYezIo/vDvAS7oAGxbHd/TkJulExUbV2Hm9J4cET6hVnDBUkwd
	 68v1txGyw+mxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B68C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840145458.31434.18225432972182434634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c514ce62b873f0294e7273fa49625278a7f4f629c3832b40498c5ded04579f
Date: Mon, 14 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668401454
