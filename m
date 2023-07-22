Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC667F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 16:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E57C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 16:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690044128;
	bh=9zMDDW8Qd+sr3jycEE1LJ+JcL02p9aiBnswCnEkNPHg=;
	h=To:Subject:From:Date:From;
	b=VSmlrxuuyKxWfx3yakkn/YSDi7uAk5XTw748oPRHuw1EKadlZ123ctieBmzhj6yfv
	 4OsASmU3V45V8APWbL+M/DWXL83QM6smRZZjC0FuwlD20f9UpSmrxipXXCOybTDi06
	 l+3m9LHSp7ykN32ow0UTawVYn5NKvPrgfc/4Y7FMHF+/Nz08PmiFX9/0SY6v+fAZRh
	 S+E0ZyFYJZjfRlKTtDJi6+tMcZK3iKLCYnn3yDdeGqyACfWwreHPMPQK6qHWkNOSGL
	 2T82z4SF4psTnEQgMwOmgWZE/ggg9vVSSiA94HOeDNyWYtQIl9aF3RF26GS8pF6Mpc
	 caqN6QuyNp3GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7CDEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 16:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169004412868.30533.9925324279747749686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45731c38fed9e83324959f5e95cc5dcecad8daf3d2677abc5530ca9239779d02
Date: Sat, 22 Jul 2023 16:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690044128
