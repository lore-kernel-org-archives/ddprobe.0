Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A4B7F0
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FB3C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677634565;
	bh=/KCOlAu6OfB1lBMixSOw2Sz+DWfaPIX3zxhhVt02cf0=;
	h=To:Subject:From:Date:From;
	b=AC8IJQzP/xKE/IOL60UEs821i+o5rHbJePrGWqJqthDl4F4VdNyF1t0PZau++9vGZ
	 WqOFb5ZTV1v3mwwA1HBOmD6rYtKObYVyjw7NMGScubQv3qRZpQuNc9Z6QUsmRQxN3R
	 d74JhqSMy3xvpbpZbK059RMnQp+5U0dlSOzZ21H4XteLb/adFhpukfS13JZ8/VfKa5
	 7R7lhZFlH8FxwkpVcZH5usDoGEiQTXH8Fyt/QqOOSpwEUtyhBS/TVpzVHPgAXPXCs5
	 FqSLWyTq/NGYeuwzODYDUDPlA0Aue1chK0LZls2Q5x9r1NgsB6IVt3Sl7eOm7yzDn9
	 2p7Bfw4Mn6SPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC8DC64EC4
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763456575.13198.4593592181280210113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab46a4842b047ef80364e8055bfffb3927973d05c94bc6340f991d3165463d0c
Date: Wed, 01 Mar 2023 01:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677634565
