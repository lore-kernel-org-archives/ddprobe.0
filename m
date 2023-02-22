Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F407A953
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCB0C4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677108845;
	bh=T1G1M0vnrRZN6UEJNgooGzKTW7Gq5IwzYoIukP8NZ8E=;
	h=To:Subject:From:Date:From;
	b=VmHB4bPnPMH3OZSdJQIcTsLDkhLXHA67qg+OMlHMCsDBMavWZGyX3MoWKTGcSvHfM
	 svKq6IN923TtS1QqO+hV48K0Ou1JJj6ivt/YRFm6MRjC+oWf7WXqcJp9KGcq/ltB9O
	 UHszf1+edi97zCVtK40wjo8x8WVUhPABicADIhTK251k7RlC79/43fijbPuS+xpcYA
	 N24JBba5ybsiH5Rz/FJQZCJ9QLnyX30D4oWB91NfiuyZOCGK8RrFtAhZF5MOsC+Nie
	 29XCFvwMgKHab8CylT8brewMxEUx3KMn0CEq+ocNqfPpIw+E+zb1Z/pEnYcraisgef
	 +VUDcXl8OmoEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB512C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167710884575.28411.5018722593887933805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1345074aba8f6707ab0fecc85dc8dc8ce85495a059de1ed90b2b5b573517bb44
Date: Wed, 22 Feb 2023 23:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677108845
