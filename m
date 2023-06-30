Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578D317722
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B17C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688157788;
	bh=Dvec3zNxJVvxXzAmR0BBIFHDs1eNEYuaTEngwn+AXYI=;
	h=To:Subject:From:Date:From;
	b=nnxu0VzZa40BeTyOfbFqtJakQvuG4A+/e2FNr9JnFBLgFh3A6BJb9oWdJ5cx7zV6H
	 ir+H2QRVcQHhneFIeg8a3ULL6ueTs70mpeIISwxmqGWLXFqTo3BhtCpmI4NFCVZLCY
	 59LCYCIO8VBbZRay7ZGKwdD3WOnFzagANnuCyBZDho4viEw5ujdrAo1bG9Qy8gbtW6
	 VbA27tV99K5chgIOPe+ggT1VudDSKK4yBNrbadRQWuxxDqubk9mQTeliEfSecFsQ/9
	 7UtwqAcaxdoFGL+hhwe+dkTXgNseynwJx5KW7MmNdzxfciZIPxHtFjndASIcgNefFU
	 O5J5Q96Rl+SKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB66EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815778882.1710.3110100841242046959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a805fb7c94721a001770817102d3f636fe64bfe2e34845644b3d2f2686f114f
Date: Fri, 30 Jun 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688157788
