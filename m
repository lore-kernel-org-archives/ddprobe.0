Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70593A4F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 09:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26C96C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 09:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684573746;
	bh=Aqz8Eh1iihl9DD13v+FLb2jPObCpqeYhKFFmaEtXWhk=;
	h=To:Subject:From:Date:From;
	b=jBTYzylPbNb+4FDK/ph2UtiRg83x9DiJFeAUNM+ggbJ0safvYPcsfaoLznwScSJ6K
	 5TIFK9t3+fTKcfPmuSdwjOxPW14cpCgnKry7vM9MtE6KzRjFz/uEVOA7sYSw/WAWrA
	 exxXw8apM4fuz6UVIyOmdXwSGqAARZHCqhsVNTA7Cmm9bhOcVIngSWg/GRcMy1nON/
	 Sd5Mbp7XsX9QVDyt4yiKa2Og+Zw7lrBSlc8IoA6+ZYTzKR49jI8fMa4dxSAzViH2Fu
	 vql9U29ZmvcaEEnJAN/SNlh7t+SdHZYj3QtYKlUrZiw+ZSOWHg2Xnl+8LTaAFekgzA
	 oNwF3q1jlE3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F079DC77B7D
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 09:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168457374595.22167.5004692510700918456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9246322a2ad4c97bf146a0e5cd4147cd9975d148d0799d17a9bed2645bdf1c
Date: Sat, 20 May 2023 09:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684573745
