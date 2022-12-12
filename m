Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90351FDA
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D0FC433F0
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670839887;
	bh=3ExdmjKL3vFcGu7DTlcnpgslX6tFD2LtG5FVDDr86Rk=;
	h=To:Subject:From:Date:From;
	b=u1FOoTchZ/fcyJmJje6MFGxn/2JpM4qWGitRpO4MpdF7Nr/KSmLFNhKuDSngt0vaG
	 //oKvHcPVAv6SzvIWP4lazSoKTpLKw0Cm2oUreM7bMU5+odWf8iLBMs3p7rrV2d/FS
	 P1HKMXC4jRuCL4YK2wz3HzWBMCqHPAAdpXRGRmyqFawqAL8q0ZH9F7lLyU2fryIdtw
	 4JiJvyFjtYc8MHEv5Aa3NcXgCbOMKOjHrY7geqnrkXWRcSzGxf3W0+Q8NySjc+0ank
	 ZZtHUxMXJ4uRPH1RS9ZI6SKWsOm984zslzKKgUxNkYQWL+wC3rxyPxJZixak3YLh6o
	 +5fAPC3iwtkIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602E3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083988738.10838.14936954203849427982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c24ab88587841a5b5efa6beedef229308bd43c865a9a12b247d243266535c1
Date: Mon, 12 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670839887
