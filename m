Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85CF20F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AAB8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665646253;
	bh=UCRYQ2pU8WNfVKf4dT9Jtnaw0z/z5nu0DrLO20ixk9A=;
	h=To:Subject:From:Date:From;
	b=ghQ2C4joGpSx8m8e1mfA0bAhy9Qxq3Rt12Akn4Ta2Lh/NQZGowc+lYBcwu2rggBwk
	 KdGDJa8WXxYeztVYq5ONj1op9IYt8KjdyxAmoJ/4ubDIjE7ypZT1539e5+6VbtELqR
	 selHPOWYqDCaVeLFG/P3M7jbNUnt3Os9ynOSDbcj7cXvhT2rXz/9461VcE2AjD9ZFV
	 5uT0HUwCobBRFHjhPzY65Ttwh+96ArCDU9YQtpER3Nf4O+hrCyJvn1yYEur/eQcCaH
	 UiLAQuTqlbCgxyrrIDkZeHBgmRhQjH5QJFccAlj0e/QVsnCRTXDQXRbZNPOY4DGu2u
	 pT4ZIYh4NHHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53756C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564625333.22273.3388708014067803752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c37f974217438d119f8b8a78421bd8ecca95bca343a360dfaaa8d96fabca6f
Date: Thu, 13 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665646253
