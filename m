Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD341E508
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 18:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C832FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 18:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689099428;
	bh=3NB23VVgEhkUHD3UhLdXJulP7BpSAfAfBEv9LKhau5Y=;
	h=To:Subject:From:Date:From;
	b=MNniDbdThMHP4aowQO7g7hLRaZYkTEkjhkdueDWK+ZkDuqESEmqVYY3p68XCnnG5F
	 K3FGQoyH23xjL6KaXoIVNDRjuh3JhEvu+CvNVTrm3/2gk4+7KYO9uJQyYDkxpwk4YG
	 54bqLaRl7tVGkBh3vP5zExXCSPBxEaRiIIY3mX4SSsBa+ARYgD00sGOFqzBOhaVCIH
	 aMxaNJN/llIoBSOrxB/rnvK9WzDCd6zhVJHoXPqLFJaLgllEntbwcS2Ss2JIhHPJio
	 VQZVyeGRlBEFkb6fiA9IOI4OQnm5+TwBKnL8uFzgTSX3rtPVSmdzLv1kPs6Cdftv1Z
	 14G3vnQkUTNKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB9BEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 18:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909942870.19645.16789972409740870703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d70e76e469be17b30a0059f09c9dc57c446afe941b0aab85f56023c20946e8
Date: Tue, 11 Jul 2023 18:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689099428
