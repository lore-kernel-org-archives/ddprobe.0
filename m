Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E124E8468
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95CB4C433F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673547687;
	bh=4+40A1DXnt7YJng1MrUGVJG4RTP7AZl2uJgfphXbNMg=;
	h=To:Subject:From:Date:From;
	b=mKfoKUQVIRWTLI/1bn/cERXxdz7/FxR3tnT7jwM8/M12SHWQXqgC1CjIlVNPVMSsT
	 d+evnf0d5cBQQExp8KNp1ttowauSLK4QzaZy9LcW3POvaQLYAw5bgUZLljiR8ucwoT
	 64NS+OfOQ3gaJtrQay5KfFBecGwXG0vKq1qF0BiRveERn+FSPFXrATZetWi/5+PWz7
	 Uey2+nr+TyZl0DxYw44FASoohjNk1UqwRaVwrQpihtrSGWQgNlBuiwY6fsGkADdGQV
	 1nc+AJo0tFfQR39rf5uQAnvBQQsfCbomMkrnvTM8p2KNOHorb87XqQizRg6Nk+fD1S
	 YR/SEwNyFqX7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 751EDC63797
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354768746.16896.12978488767672169886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1da2e5a9e51104e0d7e74b88ecb5636ae019ae4b632ecc651b18c6f709d191
Date: Thu, 12 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673547687
