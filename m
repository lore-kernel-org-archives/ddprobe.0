Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3574423A7
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 09:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44D5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 09:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678699025;
	bh=LF0JYwG+t6if/Adg4oFkWxNw8BPfWrRB++8Q/05kxJ4=;
	h=To:Subject:From:Date:From;
	b=H6ztbEDa+f0T8iZOgafUlfyqcw3kF6DyZIAYy9hBDHpTgeFM7G3VtwkI/r06GXTRG
	 Gk5DCCQ+6WhXQZ/W6P/Zj/dYhd3ec3IgUp3xyVamU80H6H1QvObm3FWjrDFR1kyfCe
	 HAFbQUEt7JoOgbAFqVwGHHL4jM4PcdOvJoUcEd4QpwmEFYCdkr4VFeBG8TtVCpMzHj
	 ttFiMe9LF5hV8smEpBXyERg/gDBVbqUpikluIuwcg2n9kR8Vi/rdMPEukDk4OI3psp
	 oft56qQKdPW1Jgj7E83O8lzf1H+G4Q15fjjXrCsoSOzMvHjY0Z2u9h6HKQi3BXMZHL
	 LgI42OY5grCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B22C6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 09:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167869902574.17433.2147342202789209558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8ae708e66f15bd765f46ecc2db82f476c44d2f775cd74e5edc718e32bef15c
Date: Mon, 13 Mar 2023 09:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678699025
