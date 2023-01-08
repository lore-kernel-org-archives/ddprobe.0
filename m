Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C4123A9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D7B1C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673193687;
	bh=Od9lPtwr2d/GjKSjkWmVGENZrmGZF9jOjpE1wsTHDgg=;
	h=To:Subject:From:Date:From;
	b=MMXignKMcZOdEkfZwrbSD9D172EhxzrW2fgIOIxyZWVW7IhAbYXowQfUmofYa9NLA
	 430pZ7nzRqqzwa/C4rPRMh4HGuylwn8lP1F2oTW43MkOsaLztVB+/KT0/qz/K5z9j+
	 EsL6BW4e19NsvgUI4erZS/NIb7uNzkUVtXZzuPhmw+jH0RNuOybDa0dcsNI1JTtdZN
	 8AkG+x4J4UTpVY9d+/djGJaVJ6g2Yd+m90RTCctm0UbHzB5IHnquRGa1X9f6MpbuNi
	 N2TU1DFN7r//xVtfJzeehQSCksN/ePfBUQfB1kucCwlAEdc49jb4t4Oy44N+i8iWYC
	 snEQ1Y+kj2RrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B9AC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167319368745.27202.4535979466281148851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac39a6d02657a1a55c7c1fcdf0c09243e6f29ef60ddd3291269014fd822c6fe1
Date: Sun, 08 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673193687
