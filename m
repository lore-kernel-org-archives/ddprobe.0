Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10AF4C71
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF8BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669995654;
	bh=RNK9nBouNamNQVWH7BVV5T7zE8Vm7oLHJ79BBfoIjDo=;
	h=To:Subject:From:Date:From;
	b=gPoEKdzdZDlwiGpToaDVkfdahWDvkcEK5No5NT11wLcoRoCsGyGCD3q3zweKcXpzj
	 VZ0qjr0xkUeaTPluhPRLRHd2JGZNc7p3vOc3bmZu/gIUuKYO/LKuZVlSYjo9VnO0QA
	 i3rNqkC0GQ5BDEwlTzCsEizXwge19gcBkYrXwUPPkS+8YT6wzKBLVNFuyfczTQpA2V
	 ksBsr26isoNqcnzLnPQw9kO+J+s8LHiWBM5yCttqeQBUFsqdXBbfFJnS7ljnI4wedS
	 7CRCX2YLCq+ZsRUahgSsRG01LNhzXkV55+7ptwf8Pqbk4c9Cu+upmFLf/NyU7GwS8T
	 NjiJEFLkB4K2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53763C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999565433.650.6540483333032002586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d695846402112cbb945161eafd4f91c980b71e61cc21261fb16a192df163088
Date: Fri, 02 Dec 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669995654
