Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115206FAD
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7733C433CC
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691135588;
	bh=DQVPu8HUjPQ/POMrB0KqCUi84rNYBHLGYBu5hwZiFsY=;
	h=To:Subject:From:Date:From;
	b=AUw3i9rSxmkAFmB7YY+JHvaIKPGD7yu40nWK+qULxIFAz1gBsnn/uorZD6XdbHKts
	 dMTCd6xWr+jwpvv7b1ZVqE1GIYPZEvjLecv82ozRTsokRF7001Z6C+akW/zV7ntO3s
	 RmDlslyImeZJBQSrstpNj+6mOCSlea7wtx1/F+a2KxGDBc46Ln+O1QDUW69AlLqqnt
	 7Nx6SoTqjZDXLQtjS0d/5jLyymLnB+XyvBUnGkbtlQ9/NeHN00bpex2+66DWLlB6fC
	 RpDjGUt3DscVG0hp06rG44E9/mmWWWCQhbdpkOx1GCfkCJj8pvR1RqGc2SpH2469/M
	 tVSzTp2pek79Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4A4C04A6A
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169113558869.28738.9408915761214069360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987cc4eda35e9592a99d875eec1d9bf6fff3d1abaa0691eb964673b893d6f8cc
Date: Fri, 04 Aug 2023 07:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691135588
