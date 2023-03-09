Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC48628
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 01:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DDFC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 01:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678324865;
	bh=ZQCBYHFVbwQ5A5G/UWq+UIeixYGqEbAunfPnU6IiowM=;
	h=To:Subject:From:Date:From;
	b=pox9dOr9qUD9//eH2MaGxijuOUKjgER1e6zLwFA57UubiDZ/RqLVl5S2B7zYWj12b
	 aFWMAUkGGSavEW0+IRYPCPupFRwzpDNDHJf7N3GFjYZOOA3WbIJk2vO6t48WvUloXV
	 5vIkoihmhNIopeCPP5oDDuVKTq9ZB7LO1cdYI9bkDG68Hxsft9ju5PGFpIS0xlSlhL
	 CVoe3uwAX9gXjLMumq3gtq3NKwteTgnInF3EsCasZW3OZu3Rl3pc0dQdUi5+VQUrsg
	 AJQnKVaaRlI8KHxb+fxW6hA9tlcsN1+07qTmC+Aw8VSCimC/YnByOw8YZ2x3FXknPf
	 T45HLXXYPyWdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8873C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 01:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167832486573.7628.6212264532616013836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a28c72af0f6105324fa941a87a824e3a9df7fd4c7b6753ed55f00de6ca4f347
Date: Thu, 09 Mar 2023 01:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678324865
