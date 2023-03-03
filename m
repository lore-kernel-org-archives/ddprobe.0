Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537663222
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 20:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3E26C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 20:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677876426;
	bh=iLWeZOBNXmn3+qWCvVoW98+o3jTPf4eRxp/GiNPPD+I=;
	h=To:Subject:From:Date:From;
	b=bM7OjJOX54Tocxw9kHwQZePWc3XkTFFlsS9HhxqF4YxzOv2n0jN4ePBh/hBXeNCto
	 sw95cc2ClwsO17Yb4HYEu6H26u60NJOWmqw9+YTOGGxZ9/OgKcrjRjnNxed80xTT4M
	 uNxnu3+HXEyst6UX+qOhJGAjix3uePV/TvIjBnzte0QEUgU14cs0jfkqtwNYKtgSHn
	 LL8NpLNJu9mpcq5KZ3hc80LBIEEUY8f4WbeRd0TDiLiC3q0o+g+3lEWf5SfoYCIDiA
	 PJGgXUdsAQi7b9yEbH+n3uYMhc0lwuc49vKjv7tvzcP/tz8Ika6h2pIWQHwYOpnytd
	 JHgsGnf8t9mNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9762C7EE30
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 20:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167787642581.24981.9038087130377741726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2754ad4224aac320b77f4528a26a45b7bcc0e0c6be8763e297793c384e1c0660
Date: Fri, 03 Mar 2023 20:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677876425
