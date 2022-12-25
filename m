Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FC136E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8487DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671928887;
	bh=645BJe0I8DGkNA5PZ/2+3wG/eG6deX+3qUXBZQELksY=;
	h=To:Subject:From:Date:From;
	b=GpUQRhaQ+y1NQayxBQs0XAS6gQZMxxx9b5dsnQkexM65K3rXCsLPjYPNZG6uHk+E6
	 HabM9bLI1+MNs+vZGG9D7MvnjgG4VnBSiAakmtI7ZOnuhqNdE9rbZIsZ+P9Dm63PCe
	 gj8EFZ18n5sCk97XO6mLFBW+swpgj2VCp4bJSqp1aC77pzp4+OZN+H8MVt/5eTx17t
	 KOei5Esrtwios4XgnvEGxxGKoXnMMoLTSh8DCYFiBj86TyvWqkaq8ydfx6Veokw4M1
	 8xzQ57UnO+tYNnn4QkhxDMSbL1W7NxGok5tr7FtHtJjkDqbsJlGAnZpU7KZmxClX8a
	 JT7cBKYZ+mchQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E91C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192888740.19320.9503318661243671690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbff1e9ce26adde77f8a433ad826f8e74d4e700b3a24067fb1c9749484c10d8
Date: Sun, 25 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671928887
