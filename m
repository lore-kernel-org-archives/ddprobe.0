Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C498371
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 08:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA9C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 08:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675931465;
	bh=4PKbyriICMY9qtN8KGbSrNr5+bVyzbY32hKqTLWmLVM=;
	h=To:Subject:From:Date:From;
	b=Y2nx33MH9gCP/9Rgbbzl+8SjxR+XcV/pnerooSVW/1Db/mygN+fDDz65J8FiaWkdP
	 AO3XQA5JQekMG+DWOQWy4IIQLQnNkixyjGcIl3knMjkXaFNp+ZcbNhXSrRf5gGRPGq
	 8m5Ky/tVU6wS0klF1lrZkdwEY5edyyoRxOhjcgqlNwRttD2sD2JHp4NcQ6bClIXho4
	 fdpqpoozuqYvv/t1ZibpBIRBwri3lMbrpKrEkpj2ihkVNxC0FGM1jafbx7VXHvnTbZ
	 bWvvc/BaYFYzz31fFd4uGmVBvJ9x4WwODJVjKCuhCvJXOGHstflVAsXdUDIBcwV9Hg
	 hctdvHjVcdaxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CA9C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 08:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167593146575.19966.892190147353547353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80608a0b5d12406f095e93636391d07a8f1f06900d318e0d2653d24abd748666
Date: Thu, 09 Feb 2023 08:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675931465
