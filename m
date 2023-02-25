Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD9033E9
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 15:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D144DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677340505;
	bh=o8qmpQQFeByQ1UQ9yhiKTZge2ku1slN13zz52D59YR0=;
	h=To:Subject:From:Date:From;
	b=RtgwWOm1PPba5vb54Ot2iLqQFJCFkM3NTn5FJ5Gv6/OauwE7CkGEsxI9ePT2m4L1K
	 513/p1XutjlHZk+yLgWq4X5GCcoOYBkp+0CxNGr4UP7dAqw8a5TORb2mfgVOz0SsDc
	 nPL4ZXoszo4R8oC6j1kFFE4UkkSuwMwglTlJwMCsXWbeJKuuoIKbopsS32hCGhz9VX
	 xABK0zQlKeMJo5v85nSBTA58GFwCH1MSLg3h69w2dDWXpW0QGFOqTsQ1ED1J7LQTY5
	 Qsw+s9AHkscADoIkHlSiP7UnuX5BwAiGZqhGIf0gOnQYrQ2aFa+Avv5SLthhl7UDIY
	 6trDIWD6Uu2Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6282C64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 15:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167734050573.15662.14332625932054804905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1581398c525db7c9ca593a5b0e5920a3cf83e3f4a01e3f5256b4c28feffd7eed
Date: Sat, 25 Feb 2023 15:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677340505
