Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FD01FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83910C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667675454;
	bh=LfX+CA5F6vAICGJzw0+ZZbQBAKgYBQtqIIOnOsSsJns=;
	h=To:Subject:From:Date:From;
	b=JEDhec+/9tRiTuXzdM6vX9dFvx+o/y4mLij9iO4v7gKti0q1q16xZt40bdwDKtiMT
	 d+7pbmYahGbgJ90wHP6XuXSlRYEQxg69qn3Az6iJ9DK0MD47Jfv5tQz+SOHyHivo9A
	 Oyb6hXwT3ZqxE2JD/bhKc9IsHZ6cCBe3y6vg8DQBGuP+NdPBpFEah+iBbRXaxh0sVa
	 j3SXS6cTh75NEPuUdw9NKjHd+dlsd2/JDUX7q85u1F3kFj8xSAbIhwYubuWSCi5Fjv
	 VzAerus3I9GzPA80+m34oUDttzPtFkeRSazIoMTZrzTRL1kgczmvQzzIeVYYK/g1H6
	 oUkLxDNvDovKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0D6C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767545436.20043.3902119293659741479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3fb2451b22c1eff72976efb75b4366f6955f1292debcbc9164b62cc5c7adfe
Date: Sat, 05 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667675454
