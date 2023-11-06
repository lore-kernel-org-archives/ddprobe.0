Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01554D2E7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfpnUFz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D67C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699255696;
	bh=AOv3gbfLmBsKeHbRKTGUpbOSKK2hG+9mdW+FnQ1k7H8=;
	h=To:Subject:From:Date:From;
	b=RfpnUFz2NnuNU4ie/lNrfUn5BXv3g+7SqT9NNIslEvMeNst2WlANi4SqpCUxXVHeJ
	 d4BaHi3EwTxlVhSQge2gKJ6mPvCyCayzPYtahQXaAmd+4s68L4mXx1lqVJip8lQZkZ
	 TVKcNB4iwgLV0J9Pso2UOlS2vUlRJ7ukHfG1W/8L0b4BqDSuOPuXPWvNffaT1lFDXg
	 /Qrmk8QfR7ceayWqJqUv8XQwd8ehZTB0Vk1ZI/C+9nwoKOskSVAbR6NhiMkMtrerfk
	 tmfuz/kVWzpPEgy2BMPnSctkA+0A4E4HnqdeQuEzAAHDfNm80Qn1pEfwQSTB7Vy8zP
	 eOLbMmXFI6J/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6205DC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169925569639.18246.17987417059667589232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda36d66ee1398916965dde9d2d09174774d7b06350d9e45f45277b79aa9e1ad
Date: Mon, 06 Nov 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699255696
