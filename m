Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0322C8DF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DDEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688124788;
	bh=paj4JEbQPsz1IvOXUYC1Qizbw7aE5A5OJH9AnAZuV3g=;
	h=To:Subject:From:Date:From;
	b=LN5+T3vCMtygEiTtqOoxcjC+awX7Gq4OPwUiV3SaijTLGfpdbqNf363A7MNfvZEiD
	 v5agcx4UphIcRoOhEw2mAAUX7udSHVpzLCNCEkAsi/f+ASDcdiBv7g9gAvn2flr8zn
	 pW3d3x3f8uYH35pPb69SpthvigyCty52EK7SlIMZfiQzTq2BW5an0/lwWIJ0n1oPoy
	 D2tqwhxZKcbSNLPrmvEGSYm2NOMBdXJRdNkLN+qS/iV7SiTV/lmgDJvDBbjGsWs8MG
	 E6vW3EpcbshjdyBlA5u/mLt/zz8U30MJrXs+pNgRiwcFMW47Mim8QgwP2lqsqXF/Hl
	 SEL+JDlnI5clg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7D1EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812478870.31250.13553586126417810972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a515faf89ddb0719cdc6a2b0fb6d8a7f01d39b02537022fb2c916f675e3cccca
Date: Fri, 30 Jun 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688124788
