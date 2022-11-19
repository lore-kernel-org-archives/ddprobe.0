Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45E3630
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EF0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668843054;
	bh=y6xAvTMoywtFt6YZLJSApci4b5LwxXOqgVYbI/sYkg4=;
	h=To:Subject:From:Date:From;
	b=ZLlg/grCzdFpEY+aTkJCFYiI0JEUH5Bi/ocw7ooCjqYZegC8vYQbnl225wPZqKqHs
	 qT53I56o0sUQFS+I5SkDRJf5jV2hfVk9Vk9nXxMSEh4NrtUJxZ5nLmlBQtFGddyVMt
	 6YqKFeHp6t7vfyp/3qlRAHFO4HYtlzLBjIgyHiRAQRMMZ8BZPhSDFkdK88+lfiem4b
	 oboJXdEY2q+H8b4mO4YUIsVvHRD90HjNPsmFhRtWVSk6W/cCMY5pZPQ5PWvRfKud0G
	 dZQeQ9ZpUcrGkBC1Nk+30zbLxE/sakh1N+JWFggvLhhP7tuiwinPvHmo4ZJXY0OwFx
	 NhdLOyUzik3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FD0C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884305434.22381.984659741890523841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba48678e7e0e59efb2d1ec6eb6ffe49d22be5b27719e53ff99e92d2817e8048c
Date: Sat, 19 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668843054
