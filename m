Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEFC7EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5ACC433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673629287;
	bh=ombln/0XBOmyhehSMx5Z/JefmoHGIiZs6llq0Iie+Ps=;
	h=To:Subject:From:Date:From;
	b=FhdHbaZcZTWHgz/3ZtMkLqTpTXhh380zbBBAsVVj1+D0/tThP/PqZ+xoqAQg+3cbO
	 1OcrzOIvsYOPIUeiW+RdH6uRFAWUALZBdZsnOzLjRxErlQXWOqz8bSjKA3M6ghWmnS
	 zQTRBya8NvIEQLDjmkmTncSK7hMEqrdz6jQn4tRRZeBb0wBu14cW1hRjrajfZZcUeG
	 dSfHEeJct6BEhkwS1SjfLf+6Xxkg68vHRTl/2b80pJiHSJptb30sUjvhVJWcC4f9/D
	 j0A50ZMpUZr7LZ/jh0MOBLd1Snah0r4pMh2GFMdWHqwJzHO1CR5ykiXqPsOFFvAoMh
	 esX1whbvCLkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C30C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362928739.1656.1037270731136008472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b487590d3982eecd4b2aab15efd69656e0a8b9764022217a2e961b0e0ad27aa
Date: Fri, 13 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673629287
