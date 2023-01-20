Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A830BD2F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC804C4339C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674199325;
	bh=gVYonDhmKqFOOxpnbY4+/eVAOW+n6ibTYx5+lJyhti0=;
	h=To:Subject:From:Date:From;
	b=DFjn7lkF5W/KJpc5+3trN9wVHSUCMUa7AjCm94fy8lN4HfDDpjTg0Vii8NYL8SeUe
	 +pcE0tmsnRlhJSY21XNd4taJC3aMh+ejLOZ+23rSq1OYD6hxs5Gsxp39txRGVMsHOO
	 xv1lKzDMpgm8yIbaTu+d+dpDWXX0Jnsi2HtC9b+nsAdKyU+ExNAwUqfa7eSuwQSUYH
	 FNFU6/V5+ptvx3CbGfu6vLSorvMwVtYkjpqlumnPtr4OMco3Espr3bvke8P4Md1AG9
	 5cpyKcjwx5gWWsRZqUtFRRpkhG2jH/AhiL4iMlfgxwlTcSkW902Nft6LslShy/MJLD
	 mU1V+huVtMPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C033BC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419932576.19441.10584168008490240399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7785ddd167d94030dac3bc4a1583d21840f4f9b177bc2730c94c1495d8a0c0f
Date: Fri, 20 Jan 2023 07:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674199325
