Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411D02590
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD199C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674402125;
	bh=D1nzXGsoaIos+TLGrX5tYNLoPe17kG2rOwdW2Fd7iJE=;
	h=To:Subject:From:Date:From;
	b=L7rsOiSzelOrXI1eJd8XmeFxp4MskHgOnpbzALt5Gj7pU7K5Oj5bEjZHRs5OwfzIR
	 Xgsfu2nEMZOZO38QcJEXtqEXugmzhaCzZD7ZkjhUekVdq+kzDYeTt7xNO/bf+l35qe
	 sbl+qCrsdHCTVeoZEiADTT3ceDccSHENrOdnyMy7jq3CtndJ9mWtcjIvqkL1SOpwv1
	 MQ4ejRCrYWCorgZ0b2qpZaWhbn0MuNZgOLiC6xn5jytjkfARCkgog5bCRRn9Thp/Ie
	 7IWL1lMvl97arW25yAJAmiZAsE/bOWSFCvwS8rE5/TkFcXuE1cUoblpyE19dW042Ly
	 ey90l3uglDVOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2995C27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440212578.1071.16276466174622931452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a649c5568d846e6454bdad8fab165992b6d4a55931e07bff5d53e889a61271d
Date: Sun, 22 Jan 2023 15:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674402125
