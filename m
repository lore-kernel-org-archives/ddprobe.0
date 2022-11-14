Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0864539B
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67192C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668438654;
	bh=AfrhyrAaosvZIxnARmwBe7MNKZ/g8/jlio1/YDUzIm0=;
	h=To:Subject:From:Date:From;
	b=uuDF2CVZkDacX5RLnk6VbGZWOOIUKMK8ScTqJBcQGnX9qsXMHKQiWO354IOumYYPL
	 ugLoeKAtyvA2ZDgZPqkypqSLVqR8gT0TdN2ISlOGX4yQ4JN7l3EAaJ6HSZHzYkgJQU
	 jPh8fduQtWU5UKKiK6MsRt2v2LMRZ/aEGMtbPoiQcoIrGFwJOMJpkHuzEUfXoiO5nx
	 p3xYir+1zlAl6KP/srYU9iF3DIsLIZJGBr/i1+SD3rPb5ddKhwS5o1TzTqHs0ORTzF
	 At9yPWVR8bhS2dgeN1R97ko/wgQmKgfCJRLLMoza+owH+vCk0ym5NqHTmurE2RSGAm
	 /+zsV8CdjhTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC7AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843865431.5988.17385891381256001432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ecabacbf6f0720dc97e6dd06f2ec02b61a37d9c2cd932406c8c14da2f1407cb
Date: Mon, 14 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668438654
