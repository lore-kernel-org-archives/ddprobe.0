Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C7136D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F901C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671948087;
	bh=HBA1J7Zcm7hFcqQkiQ7Hrb0zj800RC8DKgb1+NcAk3s=;
	h=To:Subject:From:Date:From;
	b=AbXE4OqbWgpqtbf9F29cfJ6b0xsdFC9Z5ILym70Qf8ttslWk2K6pxMg6NLEoCUyPW
	 /Dph2fq9oYZvPV/JkgBeW6D0JZPTfxf+z6Cy3aw6Jc7sQyAX7AMYAqNgb5fXwxQopp
	 BrwsPxNP1gzbJJ7RdYqfXwLnsRnVN4qcM60RiA/90G7hCv18/YWD3IO3WQBH1REf99
	 ujAT16k3a2oLIhcYTJVNEwAQyoiRHPGxgefpT1YEWbxUjBVTwF61EZ2GkYn6BmcYPo
	 Tc2KUydajf20RV0ibnv2WDMJ6b2URU0UN+EfNtmplp1cMZv6UpghQkSrvrqJBmUzlq
	 Hy1neO1o5ph7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61393C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194808738.21941.3944605588418897396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0721f73c4d736ba747eb8a5dcc6af784a7c1e0f2d3f8c24ce988e90454d14d37
Date: Sun, 25 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671948087
