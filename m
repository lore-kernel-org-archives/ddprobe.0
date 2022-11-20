Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E2162B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A6FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668917455;
	bh=ThmPkU5ogPl18BtyxLEt6iFbBunSneUwYChWs6BPB2M=;
	h=To:Subject:From:Date:From;
	b=n1nEWLcbo5WrVqK5HDJvhJxqDoiZP1cw2PrYpW20IVySyEvkaSmUAic9Eolg/Bpvi
	 NNV/3XHEinZyw5YLfx5KF8ncivjglBSqhTrZz0E5dVl3RKXwuZzZX9K6MLKedvz9gR
	 iiXh/CiIW6CcSB6U7+vMcRgoJWoNtrI20brZNKc+fj72/zkIvtLHBnzEaJNjB4lLJN
	 M4Oansp/EV2k7S8yrUB8bQk69eqThjBqxQYkfqWPW6RVU9YIU9O7aotdLy6jNFhOrj
	 onLX21ndkza2oP6y8LmxPHNOp6QBc8K+bno0MMMU6j6CSq6Yeh7RtK77Xs1NteAJXe
	 CM54Sfuccbx4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58745C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891745433.2412.3881818350963541639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5925a9c9a6ad6451fd402987a1d7bdb2f37eedc7a68c54113529d588b8a8e3
Date: Sun, 20 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668917454
