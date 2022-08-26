Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C227A187F
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F7CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661524252;
	bh=4TdUChpz2wCfHxZXdTXfkRlU7+g5UPerGlxKT9iPaDM=;
	h=To:Subject:From:Date:From;
	b=fCNjME3RYe2bHyWqI8F5tlQ/ms2Mv8VvUaMyRvyOKwt7XygO01tIadw1hMwJs0NH2
	 al/jHfWX4C/INZpgRUTQhmTIXwIxAgxnRxZG9U1WyV5B2uAOKV9ucGcV13fPa/Ww3k
	 uIVeUQ3e6rXJI+EuVO+tumhXgVN7UitLx2Y7i288Yqy/pOhD4PDBUx23bGjMXRabcR
	 oNIEC9AB2WUUQU0RXhrdHFNCprZpfRbF56hBPQtwilJniXjVN2O+zMPPHhR3Hp0sDH
	 xz/srzIc4ZZ1FCUucWx8j9hXlUxskiWy0ZA60TQrnznpKmHp9sJ4hsF+6MGNb/5uZt
	 iEVt6GUkG4dyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AA7ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152425233.1994.15314626582626925788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8ec41b905b5b24958d272522c5b5d124d15841ec53f3f6bfe3254c82ee3d91
Date: Fri, 26 Aug 2022 14:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661524252
