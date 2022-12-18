Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8A7632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A6B3C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671324087;
	bh=DF9hqtc7MB+Pk8T3ltGSW8hZx1WkH3hoocdn+sY9nQU=;
	h=To:Subject:From:Date:From;
	b=D9M/7PJCLu5+aOcGpE/d/XEQndvpLmSrsQ8js5qUU2OuzhbyWiLfO7kO/GrIPLzLo
	 HRmyOve6kjIjvJ7V6Bhyurgc8a9URtxOOpvxbkyWL3DxbJiOC6LPoLKZzG2izDU7Hm
	 1MXsMtJZzXDXiGr8KaSoiLy4toc/0bqfawne2jijy6wBqBETPFa4wcdmReFFuQrg9R
	 J/WEGbyj7I++0+IOiWQc9AVPerfCpzAx41gHc9XQmLrUrnN7mKPpkWahxO66hj8Lve
	 V+0d6vvurxSTO8Vc6dG4nfmnhEJwF0OGdA1qEEcKjfD3FDW7s6EoFvi9tdOooBgnsX
	 8Fce/sFIikKPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AEF5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132408741.2002.6504829278200358104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d778359c45e7d03a5df96021744d7e5839888ade0111dea592e8a6ae792856
Date: Sun, 18 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671324087
