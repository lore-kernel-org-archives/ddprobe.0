Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4745CA4D
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF579C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676033045;
	bh=DRBo0rx0eluVGnigNmSmggzKBAMWWpCN+P1yfaEU9hk=;
	h=To:Subject:From:Date:From;
	b=YBzL7dUMY7WULoyl3nXAVmlCEM1RPu/4P+3ubBfnu4rMs2IxVrmLd0IJV5zSUKfBj
	 XQnBFDnR9tmZGsyFUTdx3pp/RiKDWiZYJqOh4hMvga30ziCgvFIH34qcyKyIGHDD1A
	 BbGAGcI/a36LpBoEJbjhSP3d6ypMg1I/U58rLgVSrTJJ1EPH9BzBtqkOWjENUTLr5M
	 HMi4Qipgz8vNXUQ097JLgT7HBH87Q2NKkGOmmgoDRhEx145roEWK+7CxY01FF8ue5L
	 vdLwcxPsAwooa8dJwYzmJc9vgoOjuJzFD5TnBGUOQh7CYXfD84SvfiAR2PjVt8sM3Q
	 unseUz9lZA3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE54C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 12:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167603304577.18140.12488554108295349575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5493745457715b14dc2f12b252294e62610a641ac63567c6993335c772b6c2f4
Date: Fri, 10 Feb 2023 12:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676033045
