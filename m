Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CC83220
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D4FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668973854;
	bh=HlWF5G8xxZDcNowoSzl+CafWqWwQpLVuvIU2TwS2Cb0=;
	h=To:Subject:From:Date:From;
	b=KLs/k3c7MHEVpMG7coY5WkGiQ/3NL5Rosgu8G8ZibGnAkm7Fojn5n3FqbK+QNHs2T
	 rdAkWcP8bfMOiM5vnCIkFNMuI+V5r6/Jlu8fJx7NCoPPZZa0zV7swRozwuwW7r8txY
	 HKUtgQHxkjSihB8CP63zDfd/bBhU6pNLRf/kTYrHDH1pey5HyQUMGO8CyAftx81kbE
	 NZLL2bDwvZ35yB5Wh3rNlSOU5XLSBRgMV/kGqb3QjzpTc21nALi2g9ySiMbFkBW4TV
	 ssDO68oLPkGvI6mxxP+B1IcBRw/C+edsg6phxsPqEBUGYGplJji7mrQ8Sxc27gM8qs
	 CDraobqhjzATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB0CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897385438.6041.13547500987663255214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d7099cd17edfdc7f8eb66a7a4294d34151d89e2fe645a2b6e54f9120fd466d
Date: Sun, 20 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668973854
