Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33D26FBA
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E035C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669053054;
	bh=hLq7uCOvTs9F+7MF/4yz4sDdLTA3jjtBP4xXWcU7miU=;
	h=To:Subject:From:Date:From;
	b=qeWV6NF3V/eatolZrFy66r1OSJ0It7GhEEcZ51mdfOQiqykRl25bC33CK/scsPXHl
	 klOOPmEg8MIUx9hicb51ROugmmnkTy/+WKLBLotOguVfpG5ogZ61he99c/a5tyftjX
	 Ks2hD5DDJprR406OU7MIhlkCR6Q+tOrV75RU4viIr3576o2YIdtt3w0xkiUmOWEh5u
	 4xRNWK0JtuuYBrYgqkB7q5AuncU70uMAVoBVa5CoRTWHOCSYNTq9zSXiOSUEzxo4dR
	 WTfRj+ub/qfdVJd9nLtr9bmDxoTXfD0wTHGW8pC4dGJLrCzmgKd/di68+rMaYtAI9M
	 vCTFkVr7AY8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FF7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905305432.9042.4109396606175533049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a7b7333c5a521d9c2dd1c776ba7128f61be9527a49bbb01c8f6c56633d53d6
Date: Mon, 21 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669053054
