Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D9327EFB
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 16:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXUXnO0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF50C433BB
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 16:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697473628;
	bh=shUCjz2LpCv7n3wfGZf7QE2xrWxHtpqrJiDdTiowbJI=;
	h=To:Subject:From:Date:From;
	b=OXUXnO0RwWkgDxZXo8hP24cc+qKLm7oZTIaLxJ+yfP8A1u3bnuikPhKsmTAh54aVz
	 qoOeLyfyVM+JAEigTV9VJy7JTyCMyJZhaa5/+HlUl9ZL56G8Yvf+hGuvIpaqtwdxMD
	 M2I9dG6mXz8vIuAejA33XEENaJERHI29nCGxX5F2ExkNRGtxQ+7cKjGK7Hz+t5cflk
	 G+Z7PwVVmk//iyclnbuoqkhcgn9UXcCz4/kzJJy2gN/XZXl+Yrxa36fAU+5BGiRS3P
	 rr//5t0yDUcyH1bLoxevmJ01k7Vfj5aaX/L9YyqmTRgjxSyJD01aW+ukcyAkh2utGK
	 gSCBOJ7c+VIuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6955CDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169747362867.9182.3810357393202102560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ad5a7ddd85e5697405539b1fc591f745bfacc1edb0aa0013a943c65aa9c978
Date: Mon, 16 Oct 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697473628
