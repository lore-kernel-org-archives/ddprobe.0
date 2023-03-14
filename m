Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB6A1FA8
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 04:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D881EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 04:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678768025;
	bh=9JEaQ9htrk0Gu6k6EsNhKuX2SUCC0K+9HLU7r7FreBM=;
	h=To:Subject:From:Date:From;
	b=XZMi1Ey602VP1G1fIXzG34jdxdwastuwzZSJWVWbipJfpdcg37vJL3NHFPw5VvKaR
	 4tH9r8TR277ps17saa0F6kDHeJ0PYS1ypC4QUzZ/RDdIviKlOS3WZ0/imZ1kkLd0zq
	 o77jCxeJTykg+0aAqmW0iR058hhx1/TUKgA9uyhXZ5BiBfztg0/aneOMY9QQHSY90K
	 heiDPjjrHcJIuCrMk8nwHRtjuIlYEsbtin2vePy0s7/vY/t8RrNYmL269b03vfy2Mz
	 mzHsIHDwH7/vFN1iOTR2O52B0FxUlAwEsIYv/3XdeR8ku/0BbHapU1uBh3jmO10VYZ
	 +eY3s7juzagJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC66C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 04:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876802575.29049.14556478983932575951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a39017ba044b9508a9cb8d69408c77c46dbf3a2e6e1ab2af5fd8fd8294cb38
Date: Tue, 14 Mar 2023 04:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678768025
