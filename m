Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3A57F2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 19:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F53C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 19:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682277665;
	bh=bckh4oMAjtVMm05GylOMgtn5BEvCUHbfHl5US4rYGOo=;
	h=To:Subject:From:Date:From;
	b=W5PHdFaxg4DMR3yQQ5QO3nCeDcRQN1R9WBFxARBnl51iF6+NCpb2UgWQujBNXdGdg
	 UFYM7rArVUAqn/266TnZJHXHjq8rUmhyOVo2llkMrXyWcZLe9qhRoCG6G6wcLTzpA8
	 LitSdlMyoWEpOcbS5A08QNuaVkTR/gvBDWHhT9kDTLkjRHolReHdEgWP6HFXlAHEy0
	 hKuKb2DrJX+OKGFNdiQkRITNdyE4e57aRCO7YjhhWIH+Stb/cB7j8+Io7IrShmAp3r
	 SBygF9NTZJYSCKSgHaJnYbPCZZ0NJtHGcasz9pRjA/t6UC7hF3SKcE5tCngI4n6brO
	 pYsXyPNLr0kAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7757C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 19:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168227766574.3367.1889476359545541334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac4e769c58a9a74c49be3c1a7f07863bf6998e6ff4a5ce361d395ff42cf7806
Date: Sun, 23 Apr 2023 19:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682277665
