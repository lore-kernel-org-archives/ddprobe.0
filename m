Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77658F9C2
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9442C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693598048;
	bh=A4rwtVToi9v1lIzUmyAs9tzjWrohN8QmnGq8+ijCPJg=;
	h=To:Subject:From:Date:From;
	b=f5ydA6FjD45NsKnaZQxklHj/Q/BtzWucn3ZeflN4HJ6y3YqWsNyNf5nd8mzn2Q8s0
	 iDrMmlTE4Wv4ueQEFUS7e7cIgxnHgAx9MIY6CT0BaAkx77MjdhyO3s8+98RUF97DlF
	 aFo5MW8IVWmkCLeM2e2z/6V+ko3s/PArBUv6s4n9m5rQYbRkZu7fNL9dII7c4qZeFe
	 Ktj3GHAo+MXJCEZJkmJlo9+BLM3JaWA0QueMJ2bQJiIjHqREbUgfZJheoFeKrvQWLX
	 16mKKzNchoJ0ErZ1kb5ZK12k+c0SuPBCHo+FVIyVL7CRy10iH+EPHSdBi8YQrowVud
	 X8VbxNfPKs3Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80FECA0FF3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169359804874.13204.5670968311388272245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e74c2b1db2993e894d0e468301b6f6aa931e4baf3d7447cbdbbc7dd71452d60
Date: Fri, 01 Sep 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693598048
