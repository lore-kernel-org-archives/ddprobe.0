Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CA51C755
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB244C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685729826;
	bh=elR2DcQfGIocCwPuIRuvFhAJdKZitLqoxME2GXCOMa8=;
	h=To:Subject:From:Date:From;
	b=NQtaw5waEYk8I8qx9zE2G26qD3sIWtuE8pnCYDeQ7Qe7B6x/LPXEtsxiPeBUs7c+X
	 SZxopcP3yaHMvaEpGkkdhWPxypVqt5uaIaE/C1lX9v2y5qB6PKSi4Yq6Ar/PLwZko8
	 SDc9fv7bPnLm2GFxUHUIlG/o24tZYKuHx6/Aeaw/cN5rR94bM+3KThFPmnQyyR20xU
	 Cp7YJInMQ8aoIRhSF/zUKJR3Z2z0GL4UaRjJ+Muxfn9iMNQTPYlltTYISrMglN49KT
	 6UmPVpZctqFHIVbmni/ZsDJv7nIQQrbKfRBQHJycmi8zvVCnTk+Si9RUWj0TwVY+/5
	 QZczxtfVHr9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00E5C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168572982577.30732.15287776272098295599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfade97fbe2c70aacdae55a541f824f64a07c39ea41dd5b264654d03823460f9
Date: Fri, 02 Jun 2023 18:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685729825
