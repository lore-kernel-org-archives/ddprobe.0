Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535431ED53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 20:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8197C433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 20:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689279548;
	bh=rW0SyN/sS+QODz7BPzcOUGhMOrKng8T+Q+9ABpzTnfs=;
	h=To:Subject:From:Date:From;
	b=kXfPTtgr7IrNrnYNdZc3p/Y/maRF2xIlXp3Uzj/FFqRD1lnEag3xklIRnrh8XE7gx
	 xAIdNQXgytDW9CWaNZoPQKnN7NajDp9Jb1irBrPXKc3Y8iPU1/8ADsqIPQRAl0M39X
	 dKFRVO7bm6lZmPZGUOwQi3nQ+HF/6qjCBhK++de1DxR8oDYIbT3YtlIUQ6uX94z/KA
	 y5iOAKURglRUBKgL7wDT+cpcXgoMG+NZ/zFKFjRuvTmTgEwmTjp8O/qeqfqziKHdf/
	 ooV0x2EtWTKSkg77dQkCQdTPnfAcmetj0I9SpQWHT/Pfqm5SddfMgpWnKTeD88oHRo
	 JKBsRQkXpqKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D21C001B0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 20:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168927954874.21449.10350933062583459646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735f06953e1f5fa412e3d1253cb8add2582310f612d3aa22a5122f5d9e78941b
Date: Thu, 13 Jul 2023 20:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689279548
