Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DED7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED4BC43470
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662887453;
	bh=bo1jh4HjMJTDl5EE0nkKLJdrvmdiz+SY0H4JCHozu4U=;
	h=To:Subject:From:Date:From;
	b=OEeio973RvpB26zFaQwboqyxAeZGumVYDxd9lA5dohF/pGjyp7IUQ943TNE2OoVbJ
	 va6pvzO4lW6OeFNd4HJP4EuI9Dy9sZxMZ+gRpX5cWP0Mx/2lyyL3qgFSGgczTu9qI2
	 C9SLxS3FDJVqvac8xAuVeEUiwiNUDozke4/Dj7GEyHMG2I36zB/sB7+9YekEuiWgP7
	 HRA2pjdF/v2IL5HQbd96YTe9TJ3HWSiiBX8g75eqhLrjo3izZ2XW58FbqH7WhFogq1
	 hEHGD9S/eANjk+v/bAKnvQVGWlu+lI+nh4Rs2P0VY/36xeuscjkWWpiCcyG6CoOZWT
	 rbixSnpcT8Uqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53886ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288745333.10733.11876946576538583195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcb1befc05e20a6bcc69aa16e67978cfdc04a79a8e2914536f7ad05ceb66a13
Date: Sun, 11 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662887453
