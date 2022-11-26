Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08FD19F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A577C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669425054;
	bh=I0Bz9WFBXM/RO3tO1olNaLiC8PBTOi2tK/whW/CyAZU=;
	h=To:Subject:From:Date:From;
	b=p8a5zxeemoHmfCi3F3idxuiWcA+No35Y3SWrmH0Thn5zWZz+DKDQmJHXYfCFHl7JT
	 OdPzSfQXk2WqFtxTMUZVcralyGO5o9MUqjZ/Qc4bvEvn7uehdmNKVDoZkzeg8viz/7
	 6B5eqEuY94k4O0fLyqeNTLayGqvdXWR8Yh52kFarA0FprUhlceIF+hO6u8DrFkx+8p
	 SW4k00KOag4LWCoAIvopqfEPs3OA2R4SMj7REzc5s5Hp/iQ1Gz+1d5RjEaeNRHh0Uf
	 0tcvo8qKPyYp36n0sZAGncujfAa4/v/rsdE6hOq4Hmbbe+3+kHyrEOY+KDLNyWXr4C
	 yOUdWQV/6O8aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EACC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942505432.27130.2011673788765660367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6faf98521dd3595a7ecbb9baada34faedf4e94862fd68bd629c1d6620271e3ee
Date: Sat, 26 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669425054
