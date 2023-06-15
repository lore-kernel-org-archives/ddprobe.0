Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674F9125DA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D848EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686829748;
	bh=XgeDVVVMNYEwSfdcXQNpf7xuwpmiP9s28sfgONEfXXQ=;
	h=To:Subject:From:Date:From;
	b=kDfmdq/jAYbmig58SjcdlYtDE2r2sre8hpLAfsJZ39C8iq734AbrXjscS/5cKVipT
	 HwTt1hzi7yuqhGea8ew8WTp8G+8Le9eXotbQtUa6e32njoCRo8zak3Nlvx1DYZQZ0f
	 Uid5y4rL6dBAJ8UyOsFblh+LC9hIup68wfedVpHTh6RCbnFq3qKg2bZlMpvpMs5Q9B
	 uOuLl2aKiUHKAH3I1yBj2TgXOT7TNXcEFQ+ZwvoHP/K87/BKL88ku9fVWEmyNjADEa
	 //oNyssyhepo0fZVI0WzbWHrpBHb4e55QcANZYDDHBi3usYb9bv04oGWZ+0O/DVPeD
	 qxSFZnbW63JyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8318EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168682974874.12273.17479820684078320952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ac89471e783c5d0898293989e80472b903d45e9f0b3237c99fa5883d519ad2
Date: Thu, 15 Jun 2023 11:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686829748
