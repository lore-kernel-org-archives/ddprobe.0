Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB2717C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E39DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686534786;
	bh=I8w3l8HBt8syJWYiA6tqkjLklCdtBk6chHqK5Zvy5ro=;
	h=To:Subject:From:Date:From;
	b=ToWOolE4C6ZzN+C7LNBrcixRAjSReVOITJQWlZKaTE/V9rYj0kAVzJKiNENF0Cr38
	 GewYIQq/AWpTXI6UC0fthvsgw9rXLvK3zp+HxHjDb9Ac94Yi72O93WJ8DgJLF87fQ0
	 llUeQ0Luq9FkE4XcVGZZJnPQhq9CorLylmvfV2/uCDqWMSX3rL46y4SlMHEwxTw8Lj
	 izltEbg7uu1sqy0RIGL5ASWhyDS7YqstNXmI+dB0+euePxNrxAD81+Ey1xf7h3I7rA
	 LXc66wzf84UY3n7uVd3k2gBfApigdxbzhaLi8ZVdBG1fP9vJVJT/OG1zLJh4BDw0NO
	 ktdMrzvE9RsGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA8CC77B7A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168653478590.23388.9389436278813474216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbe0b4e82923c2b7612928fb3096c9763cb2ba9b3b67773178e1659e5d8dae9
Date: Mon, 12 Jun 2023 01:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686534785
