Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119ABE544
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blaUPlz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9FDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705175296;
	bh=3nNU3RCrvqFBbGyF0amyFwr1TMuVlFue5AFxI10sgpE=;
	h=To:Subject:From:Date:From;
	b=blaUPlz3lgIbSyWhj2wC4xkMFPNpEr/SE2OkgHnrYCWuwoJRWCIBxwvL1wDq8Nki+
	 gUN1d5EYRAZM0WVXtEk+ZD58qIaHDi7NJBNErZx1GOY6t7sH5XBEkNdQog9y6f4VTN
	 wTQdFBdxQTS1e5ksfIsRriHIaBUWMh1M1cTLqlGlSg+0mWWxqIp5j/4m9G/QKD+Guq
	 truT9Jb09jegUZ2jBqtH067HvIEheFdxdtDtDg3v/3RLwFNEojPqr+eifgzLx5QJ09
	 FdjaCP39tXkidTKpXCTr9Ku/qsne6YYnvbFbBMg2XiYrnhxV073rGvzn3awbKkjleO
	 p/z39YNpni1KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E1F3C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170517529649.23697.892398044913622205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0856b8248ddd48853e1814fdd5d911366b55203745c5a9f691a789103c73cfba
Date: Sat, 13 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705175296
