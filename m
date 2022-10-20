Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B128B3C20
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6471CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666270853;
	bh=OCe2VQAk4B7JL4y7ARdgee1YAWxnYd6ZTEpgbqav0/w=;
	h=To:Subject:From:Date:From;
	b=oyTY35EsfyoVoOzN+DVrLE6WJ/ThMHPPUGW9x0GwytB+ve9yVBnN+RhUS3qcnAvzP
	 +rbsdGnTnhD471iZyObOiSt8H8f8czdxF+BBw6zahDlMi7dOBZ1swQRHFl4fjsWdE2
	 /cVTY2EzaB3yq6wIjb7BgQ2f5/ONLVqYMy8BQbUYwNJOgESREXBTt1ck+MTMLnQFyb
	 jlr0aTPuQCFx2+fvt9uHfeMhC5qUC9bNERzdSjDB91/u2ispNbfrUwLolbZYAckgJk
	 jSa0Ju1GJsVggrOGz7zbga3Mr+29ZpkC6HpKJlPqR/rzjpaULdheUdDU+nrLRIeshf
	 /sNorWcq6Bb0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E8E9C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166627085331.6236.12845017515363631248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a73512a2499b747fc347d903c8fa48ba845c85ccba4389108185a36147816a8
Date: Thu, 20 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666270853
