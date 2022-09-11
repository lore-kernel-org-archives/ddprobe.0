Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AD57F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A78EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662898253;
	bh=WV3+t1NRB/Npq8pZDWgH8CpswSc9c7GkyFn55mnu4Ww=;
	h=To:Subject:From:Date:From;
	b=p6oRpt7JpOeGSyk0aEp3HVH4KkYsMISiX3XufChxG0Fz4ffigPXdHz+aTOoXvTV/N
	 ajlBzwL+NlEgVHyxB7WlZUrilS/dYB85Bh0fV/1NUu/UX36PiKsZdn/P/E7DG6Rho4
	 TOBwIbJ5US/SLduyBqSI6gRDSZMSssgxMALwBUSwbGRlVlyWWXBhUcqWgkcQZg74jU
	 vyBdXHwRVyhh0HYohMhIkwIF3tXT8PEyMR+PT64J8qL3Cwgb3lO9oE6KHI2qnVki4L
	 K+AYyCa02ER2ky3EwaNO1cyqeSQqvxciI9QgL/2wYsgmOooI3ryHk2EzuO6cdXwN3r
	 XHST/eBbA+Xvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505C6C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166289825332.15919.13591536822689171055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c07660ec48b54694c2568bf6ad00f4deba4a716a649e73b6b867c5a9e4ce00
Date: Sun, 11 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662898253
