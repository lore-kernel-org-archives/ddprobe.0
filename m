Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C78101C0
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 22:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC844C4339B
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 22:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684275785;
	bh=R9iX/68eERbciJ8d17yfABHy+u3KgyfA9fwtmaCVYD8=;
	h=To:Subject:From:Date:From;
	b=BIOxSjtS5Cjpd9IxhQXQy1gQQrxznbdoBKsx1NYeXN4tJtR7jIyJesYq9aTPzMBAX
	 pS+nNsXY3Wr8fqTc7gYYaicQmp04BxMF+QT+egbTZeLdpJABIoO5JQOSlVM20MuUH1
	 4i7QqBtIvBwKr9uMl4R+8JmiTtsq6PXDdT7gi4geFbgU9smpOc27qtKX5YSYBhs1kw
	 aYIE21DGV6JyrJpvWHIQy0JhR116WMo6Xi4vjqNgR9AuTWqS1EjS/7L3sV20S30n/J
	 QeK5QfOP1WYnaijXwECX1y3PGm0UiWDtDF3pyC0B9qpJ8zTxL4y6OAuWK1kU+t+DPT
	 GK7LeFAh4I8lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2117C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 22:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168427578578.4459.11618347215302067963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f546c344508a652a9a742b1b500c502873babc06c83dd7c04cf1c6d0acb527c
Date: Tue, 16 May 2023 22:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684275785
