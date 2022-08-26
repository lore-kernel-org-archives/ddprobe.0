Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8B13D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5D1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661523652;
	bh=/OBvoJ1N2d+yUBJezrX4zvdOT8lBnBAe80/gb+Q0tgc=;
	h=To:Subject:From:Date:From;
	b=PZppIt2TVGn72pdigItAVgff/PA9VXcGdN68b8ygWmHd/wRQuu9z+tSrAqVcIYEeN
	 RKwnSJM4SoIuAE8Ytf5SeMj87+HrJ5tcAvtrmf22xlcQzcU6af1QPfOGcK4BGSZs5N
	 qCDVxc5Gb73NYUBPiKnVWRB8Gn+9b8lv8OFHePrOVa0cWBsrgFpjVlU03V7byc7A5Y
	 Nx6ai9YQB6Qjhm26HZkRPXlBRd5lUpw5D3D5m16Z6Ns3XTUj4w0ddkc2Uz9UWuYvAY
	 fT11qNtZQjBoVgXx/bnP32G+N7LpjRhkld7IOLen0lnJrC3+hM54ec1dJsLeeARBBS
	 OhARpLCRbaL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E361ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 14:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152365237.12881.17516667575949465379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad9d7ef818fa19c158cbe1f3821d7b33a2745b3b9465fb1778f94b7d4cc8a9b
Date: Fri, 26 Aug 2022 14:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661523652
