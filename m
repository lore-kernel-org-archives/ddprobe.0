Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB117625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FC5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661886053;
	bh=dcVTBeYkWMhOC6pQjC+gGbvAwUwN8k6YlpqMpGWzK4I=;
	h=To:Subject:From:Date:From;
	b=emXrDRqRrzngeZw72l0a80Sudd8NgBx3FB3XJwzTTqFmLZU98Y9Tu55yS2tYCECDq
	 FVfOJAfoW7EhTePZN/16zrH4SDck3VgTvmt0tfUi4Q9RX8YqrUMVK8WyVyHeuVYwbK
	 3HJgiXHpe+wsSyV592BBJvmcBU6Tw7WEcn992Fz9WdYzlERceZ2ih7sr1A7D00j2xG
	 SH7okGuejqTk0CvXylAfWfuVag2XGR+DU5Esy41xBUFKCpyQlV04x5FMh1TDV1bUAM
	 MBg/y0V8J2PlSl+Xfp9MwMToxBQRk8JijMy+rjuZcBCxgsGbR97/4iJ1pyQjOm/4f7
	 w0ineOVWY9hcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D38FECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188605337.32594.1479460803943434894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b969ba46b23b4e3d2734f4c6d7579b665d71d01053a26de354a39fbc2ab610
Date: Tue, 30 Aug 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661886053
