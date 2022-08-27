Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEBF15A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68209C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661577652;
	bh=bDtVs54RHtsTXgecjNSqMfQx9To7v+8xrZ3L6kUkO0Y=;
	h=To:Subject:From:Date:From;
	b=QbMl1i+yR9vMuiX6J9jy57M5B0yVq73gjrsNcrav9TjyXMHgkEwajpZy1G8zITrcg
	 cieQ7HNl2IZyNiN6dL6VWRQpXECkvoSWdYQ9jySQ4WZ1vjDiLzbNyHiNmmZSQ0VIb8
	 wjtNneqyXe5gtGwFimCzvVQEXVAPv84J0pAh5gMUT7IzQSRs4DRQW3gaZpgdu6T/qg
	 1UkbBr1TP1dkouiptvJh8/SFd9yCoYmjH4K/XX9YX01K4ZuCoHoizhBOi9eJvLPmb4
	 XkSBUTOo0mIuNYcVktjKnmH38nwhN3N94K7NJ+9Y5Qd1lR8YjfuWcDdbN1ukcKamCt
	 UHNVDZGsAREZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53731C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157765233.30062.7164960037818404792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7bed5b3d72e57cc3dd59df143d7162c9fabf6fef7cab4fb18f2f3bdf933427f
Date: Sat, 27 Aug 2022 05:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661577652
