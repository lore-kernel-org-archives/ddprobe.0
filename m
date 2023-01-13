Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2503210
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D16C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673610087;
	bh=bZBezMeGOTM4R4L+zkXcb6PlSZ2L91wXQPRwFgPgB3I=;
	h=To:Subject:From:Date:From;
	b=IjcADE+gfA2MbT+xQir/+2H6jSkH9ZFwdq2Y8qFSdpqXBaMXx9+Ttxu+VH7flX6Do
	 KYvavtXtbHSTqhzJz09T5+lD1GcIje5EsWRShLpdNT5qJdTkD82yZf4jOVVTqxx/dG
	 6wRxAurLTG/gd4q9DI8mcCxGYdE3X60ke7KZPT1E/Gj5cIEWgZrkoKso/wcfHvm3A7
	 /MTFyrV3t8HVikdvY4w1fbYkzVApv5e4NXe46Mxd+BN0o3hAMM9BWTLidgoNghcy7N
	 HQQ25I/xYc1ZO+sk+hp44Rhc2NwjYuzwuqOYfdnEvfXtK6klZEmLiVpN/T20sL4l2b
	 7tBp1PnCOiYQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DC9C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361008741.26412.7577484036273600889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aeb7ad96773154c19714c8b5cb609d300b1108054c7f130cedbf16d7530a245
Date: Fri, 13 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673610087
