Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359D77C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 01:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE55CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 01:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689211148;
	bh=F30lFd9btuubo/ch5OY7nLbdXO0evLOSyFzOaBV8IN0=;
	h=To:Subject:From:Date:From;
	b=kkyQwtOYfloKjyOwe7vA3a9R1EAI1LGDg4lQ/dErHQJd8Tp8PjuUoo0SDH2T2kKvB
	 /WtUOYYI1PdCgNnDlM8M8e3ZDfPOFpMucWLiRmymUWSbGjAtgpjtQ9Dx7a28MO8OOM
	 UyytEjVE21/IZxbt001act7H+8m7aP3BZcgoyK4z+6QAQZzPlbiI89tTgweU5WstHw
	 GjDjsvuXJeJG+SwKA+tmbpSxPoWEMui8XVCXGclNN7vPqrRRmLLIbL4PnfcsIJvRuw
	 sjCbjOkHy+X4N0qAOw2TwGpiwIcnvQgXcYjBph9XUclLba7qc5rWUeCPI3uECUKNcU
	 i9BOjlZA91FVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63FBEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 01:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168921114867.29646.1010619007099148206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee18c3851720270a30ae88970bb8b7870dd2b8093e88bd3df3aef625fcd9c991
Date: Thu, 13 Jul 2023 01:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689211148
