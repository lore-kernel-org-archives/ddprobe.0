Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7890E371
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 01:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC20C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 01:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686965348;
	bh=SZpyXcTRKJpavngws0em7pYspBKenb6RS3GG5JtElYU=;
	h=To:Subject:From:Date:From;
	b=c+n4a0kx+WkJe2bVdNZxjwSWtJGM4LZrJOBKcU6+HY2SPAUEDaOU6VJwIx3O7C6D7
	 dPesybQkcWTNOkaDTyqXx8KCVdICxGAXikoLFrSe9fF7FJfNxK8JFKoZMCnw/sdIib
	 VMprjDlXUTnEG3DaOJuz3ABAecBcDNN+ps7r41PvTurPCMY6W3rk+nRzUQUbRTfI8i
	 RtqIiTDXuhSotDCd1w8JLetFVkAKccSqFh6fykys2y/64serEqH1cNlVFN+zMLAjE5
	 C7GM4S5BUbwhEByNT2aIuoAfW+rBEvgtlInbKc7bTGjICLcSprKErW2BNJu1XNa1Q4
	 X0erMyaypJyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE71EEB64D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 01:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168696534869.19739.17719322733016294415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65c18e3bff0e756c602b98760e6d2323657ccc453e19e4b87b534e1f6331599
Date: Sat, 17 Jun 2023 01:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686965348
