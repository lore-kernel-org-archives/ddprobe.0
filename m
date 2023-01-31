Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE8263C
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 20:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2CFCAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 20:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675198386;
	bh=omO7BVqKQuDDvsuvHMgCVpGovTosd62tryCQ28+wux8=;
	h=To:Subject:From:Date:From;
	b=Qfzs3frbWoIzKOMhQ3+RQ/kV2aMX7gNOa88hxbjMO9bTJd4XUbDSKBW2MymeBYjoT
	 NvUgVoUqpwqWrmoeof5uSefub2xjvR0MmxPqEYGi9+T22u0zxDS/8yRaa38QhjQY9j
	 vqGQVPTyhcr4PjyU7WJopBdZhqHUYEEttH+qPooDVkf3lcM4o8e2KPuPuuSLSBllhc
	 Uu13hkuOqsAWCqg1fRdT7xW1YSXNkmr3yaEtGnRTjXb0JR3v3T/yP8bGKpJK9QOtuX
	 4/oVJ4BxeiXqPetrEKS6Q7Ho9FZMrdggp6KLf2LJmWPCFgvI2bj1KclSeR9tcSdLWV
	 fuLkOEpTGp6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C2C5C38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 20:53:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167519838602.24554.1159076698225803784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43fba3280507d92ec7568baa669c1eeb2363ecb86a0a86242b43655c1978d99
Date: Tue, 31 Jan 2023 20:53:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675198386
