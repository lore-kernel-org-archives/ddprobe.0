Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F0C6AAB
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C06FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673466087;
	bh=bo3Y/v9JBTMpkyutMFdzgcMMBgkGZDRiPaE39UqWlYQ=;
	h=To:Subject:From:Date:From;
	b=MKKf5uJxHSWbSXGD2LWbjt29KVmSYrg85KV2BohmmPf3mkij3bX7jgRjT9tihFPFw
	 TgAk64GLo8gnXx8WuJP1hA/IuuGf9lJrLPYf6+oIWre13bM6VIKU3FoSlYfyJju7Vo
	 w1vI9RRmdrWDeC4GmrEV6eCNeTH7VPYxO8zdjTRIOUrJK3jZBcCfwwQ6yyxaT8JJ96
	 srbogJUTXLg1rN59McR0rMazGYUmOZDCpkJdDN3BFYI8C9LkmOSJXzxgaMJ9gBRIPV
	 cNoMuYXJRWTsRe5Ha0RkyP2vwIetXWF8LoqF3uo8gORLBgfW48RFBSWcqEuYzcyMsc
	 Lqhl8t/67hZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B5EC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167346608738.31495.17317930733121953868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d3c80933ce07394c6b217f6acb65768e892a0365c7b3c57632fc8fa7a3d6d2
Date: Wed, 11 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673466087
