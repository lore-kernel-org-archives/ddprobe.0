Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFAB137D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB7FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665745253;
	bh=82d4JqgZRupWnIcdMe/bZV9hTsH83CKMcuC/keFOuRk=;
	h=To:Subject:From:Date:From;
	b=B1WGyd1L16IQ0cFTuy1OjXTkOnaCMemq6Ef8gsPgpvdQHeMllo32q+k4VGeVYBQfc
	 Ck6Xr978dPWGrolSgwa2Vgzth074UQyZiKhFDSnHzGSF0VGzH7lgATu1FDr/wwOxB/
	 AIfpkay5yzKsbv6tQNG88ZYhX+tNen+3dgkYWKJp1/ZuUSTPb8ASu8GgRbfhuaAknw
	 sBApYCymzzdaGC1kIE0cDmAZ9wcD9KJAKACIaivuC55TVCyoyPkKAO5JStQoS/dRRy
	 XVfTcp21Vs8vBkCs2iLkN9ZSjFvqTtOtaJz7IcUjS1rsHHQ/QnIlwdnUdO5/Ifm/Q/
	 DgLbISWFPHp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53435C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574525333.19793.9118888426340624010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05286f0657aa16eca31957988cd436838e56faaddec870e379adad7a2f1b15bf
Date: Fri, 14 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665745253
