Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89FD33FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A499C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665175253;
	bh=TMQy3BNJRMJVvmwr6KTCrnR97hvbnNoja5JRWCyEiQ4=;
	h=To:Subject:From:Date:From;
	b=Y14SC8ClKrFMPj6/DydamjdMgiHhPVN2aALVOJHu1FQQzKzibXreUXJ30ReKvBiRJ
	 KKwuP3M9sjrXONsxmjpujbkJM5c1aV6GxAM3Y9Pjlq5dk8e/ys4ankL81KE3GalqJ6
	 Y40evKomf6IVj/4L5ZmCGmLRNws14OEXxrCgJZNsgO+gmbfwNBZGcSyP6fq/DjU//Q
	 Rx79ZbWQnS80+6DDAqtO7kA/f8CyZhtTKE8/r883UTQufRc/vIUYttRVz6aQpTrRiR
	 7XWoNbCLoJnDXAhcdh8kLRXYiM+agKxGoN8gfm+npDJee6kKd13r9P21RUsevq05SP
	 YOys4jCC61G9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E585C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517525331.3065.17549904566120125769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e6622360d54120e246b8c27352243215723f2d22b752419e0901055b90d2c0
Date: Fri, 07 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665175253
