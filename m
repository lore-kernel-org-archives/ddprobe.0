Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DF67E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DD8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674285725;
	bh=IQG2a0KoASN+gSwV4CbHm3WDo5Ea5ZcNsGjKGXFSiqo=;
	h=To:Subject:From:Date:From;
	b=RnA5n6FunZa59ZNQI2/AaYOawqokva2MhcFdPgH83YAjzs+Cx/WW8mEyLSq9lEk9D
	 HB6luuEKDMCKLPxHL/3kZdrmQU/7tDNUCPMWf8WYTND6Wu0ohrBJ3BhQQdxj9llCXG
	 Jz8q1G3dhyB/GE/HasDiuk2gKiDoxx6a4Kd/dE7NWceJez2+F869JxHzlLGa6+OL5M
	 jiKkehkxMz1LfGpO02uxCe1svNEYVVi1jp4w4UcieOxbYMeMNOOxma2gKdZb5Fh/Y4
	 KskzNn0JdLgJHfecF03XBV6j5KdLFbt4yK81lYMgrgmrINtBCQuwwO1lGo7PZhcrBp
	 xxfnvl3HAUPdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FAAC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167428572574.21155.7028080947154249411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1609001341a9a61bc04da3a9fe45419eb85e9f3c16539a24cb8f9c88bd3d662
Date: Sat, 21 Jan 2023 07:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674285725
