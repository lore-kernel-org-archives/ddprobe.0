Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7595117F2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E919BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688183648;
	bh=LTzfn5YXMXL4o0TsVAHDiTvWgorGcL7gsjuPD4rOi+I=;
	h=To:Subject:From:Date:From;
	b=s1e2ivUoiJHn9qnWZaOqRILgLj4sU4J8VD3cze4tRLJhLn0o5k8RI0GtbhdVyabnU
	 1greWBAf1ccIytNzTh7g0QtmCsznPiWjHVuEdLlyC8Zl8Gz4dNbIj+bTyuaTLzBJOW
	 IzxvxLGEcwU0F3vTxQ4FjXoO97lLFr6WYNh2k9jZGKHuzg8wPnYN9RHaLd4phqWLpA
	 Noix0jpKipBZ9b/p4FdPZpQZd10xYl5HQr+1tZ2e2hNERlDHu1p3MTMJ7jZMOxE6/Q
	 PyyYg1R7Oy5veh/kfFcUcohPdscPxb8wvWYS2WjiFiCPnPpT5fSLCu6+oVRbhqHnnY
	 bOF6hfvXeoR9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7306EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818364878.21687.3392511109342197402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9c88515b4522d1b414b55073b7428ec25f508162ac9b8943195acec3556261
Date: Sat, 01 Jul 2023 03:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688183648
