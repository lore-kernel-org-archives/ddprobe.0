Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4687133F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 11:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F40D6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 11:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680867486;
	bh=FQlODk84MA2U5ktsuAhgj/Fy7m9i8+mlNSJanTOj1N8=;
	h=To:Subject:From:Date:From;
	b=k/fvhHakKj2UP5BMHKiegQDwMmfVfkdqdzfh8ezAYsP8It39LzPvbZN2TWxCa3Ok+
	 mwTG/ikV44zSpM+OT2OiUr8cttu4j/9R10L/93AwxspJLQ/CSIXXcJLhIQa/E38s84
	 R45lbqsYuwl4eQTs7+YBxLawx5seuG1qK3jpnr5Db6/mhefeF9MI8bjRqXWkJWD9pG
	 i+ZF/VcnfrJdOCOBRUtReIpqRrfib8m+GfuKJGqsmpX7j6TPlqvUW4T8ZetD3gPqjt
	 08CqDiKapgBv/ec2QiyD0cl5YC7G7uZ4fBRAeyIdSaAYYXSdzCkSoniScIoMsXR3j+
	 UBruXlJH37H5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0218C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 11:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168086748583.19055.12282605347016390347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb64f140146895a3c97adb6b8d6f83e492fc516835eff71347ef812e0e9b4cb
Date: Fri, 07 Apr 2023 11:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680867485
