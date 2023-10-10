Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6419332C60
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slpc+GP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6D9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696975628;
	bh=iEpNc90xkOVe1dZzMGCjlttXloY3tLS5AEetmwEqBOw=;
	h=To:Subject:From:Date:From;
	b=slpc+GP4PQysiVDmv9rC3Qx+OnDg6fmThU3+y0eA5m2YrdtvCtrlgd/9qoaaFdqS3
	 FJdzA0QVFjkAcYCw2mFmT6Pt5v7v59Ogm5/tvY4Ktx5mH2mbeCUObzyy1YC0P9HYtG
	 GRhTp3huRQnpmhom1eLYnM9e1I/2HrXswm3Dz3uAan2M57f/JO7W/PNhjsZMZrDo6y
	 Tag9/26V/74Jqh78uo7xGSx9uqWqDOPeps1JtnAWb0ZtGxk6+YgBRtR7bSWUw5n0Gg
	 EN5ZQGEf6FsfJUYBwdcFxNFQTFoKhFNovNpn2oyb+Cq9kBtJU91I0umgJnFPGZ5uhc
	 Zim40lWrYLvNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF14DCD98CA
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169697562870.5323.6673550426892027104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7add08ec8d660200f57a0df71769bce701bb1e3169557834964cd672085ab1f
Date: Tue, 10 Oct 2023 22:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696975628
