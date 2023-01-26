Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D35428EC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 22:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE1DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 22:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674772385;
	bh=Aqbi2TYkrjsYkHvKhAMklP/gUbKOiBaY9h56B8Y/gco=;
	h=To:Subject:From:Date:From;
	b=Gln1YkOhiZ7S84NWPilLRbghiz61sOp3nwU2P9dcEGy9bwWdkXT1at1pTi5DjfGA9
	 tr2zvtct+64sfS788Vjh8lU5a3aH+sLlTom9MUfqKqnomRwlYcN31DlLnjzqwTb62I
	 KKGMiwkQSPJVdR2nv6oXro8P3OxV976ZUOYOhYWldkK/PscPaGeXp/U0AJONqwPDa1
	 elcW/s4WNBJU8Zla0+KLkjBO0ktsavO6GDO1aQz3ip7rZRbDn83lLWWbzPw/YN8ZPi
	 fYMEjlBDvT5G7iG9VQbR6RyH60MbPpUN/XLtul48IsxAg9ec9ceTEowIuqznbqhOAE
	 TlVt3MZVqp42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25EDC54EAA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 22:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167477238577.11497.15772907857650252256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb81fd02f32323dc6b10d3bc22c08e29a2809dbd57a4bb4b726e53e23f62f8b
Date: Thu, 26 Jan 2023 22:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674772385
