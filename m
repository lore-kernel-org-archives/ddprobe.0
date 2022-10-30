Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48268F53
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5B6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667154054;
	bh=JhuGrh8SYKZRy9zE7FRza6AGNVUSB1kOHr6+BtboI0I=;
	h=To:Subject:From:Date:From;
	b=KpZ0My+nUv5ISo6sZgIYDuuSuvG2ueMrnLPBD1cdcEiXZV0D98rCiqR393P28ugz4
	 oOx/WnCkD3zshDihkTjTG1LNKakMkzCT1xkX61Zrm2HJaT6+3DG7wZyUxLfOZxGjex
	 /SgL8XUChCk2mNFFaeJvLV6QLjSMMst1gCA0VO/vuwFQU1bpEC87ANBD14IJWOeR9L
	 LE6OwxN2BfPjzjgNz3GZFdAm8yzKJOR0q+ibSCk/wn6pdjWYRNFtRRHBZLsPmXGy7N
	 Y5Nt/a/XkG3/lIy/cQBclwFFd7Lm4HqxNvVgXyNJ81INu5sAuZJT9uN6Fom35xbUJ4
	 L7MnOfH7yTe4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52870C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166715405433.10266.2616546203303148992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d0486f0481d9f9d7ca3742f67bd949a23de86fa9f0fdb331b15b658100a3ad
Date: Sun, 30 Oct 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667154054
