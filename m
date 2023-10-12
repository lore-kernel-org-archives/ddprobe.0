Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A133D03E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZT3Zm3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E4EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697153228;
	bh=Qv+b6ZoE/2p3mx1GNBx4hpoZq9p+Zwl2WrAdadEYJIE=;
	h=To:Subject:From:Date:From;
	b=sZT3Zm3Z6dHFvc6l3sKosUpkvvIL0563FDCnIyeZbGgF+anBM8+mqwkwd/v+xHwVJ
	 fSFUugektL8QwdyqA7ML6Oopxb9FYRC9rxMxf0FjJwNxUQGEaN6yfobCoh/mpPkf2t
	 dP1WLkuQE/524qyVt6Hdxi4Tr2DIo3IEsuNoMT5aZvwIfLGTleQGnXR1ARpQjHUP4f
	 CRX0pPKPPb+gY6u0kLpOjJj7Z7Pxcp7emDOxXs8/0WlPPL2x9ZmWf/RDiXZZIoe9Q/
	 8wOW1tYZNNIO1zPuHGabct53+DA+uDhXQDOXbVyblAIphc+psCqrs0AIdwZwuZ1ENx
	 VyHONP9BKBf9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AB2CDB474
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169715322867.7022.15501732127677081536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb0f41dfed2939c0884bddc723697d4784bd6e2fed3b1694b58baf0f29af6de
Date: Thu, 12 Oct 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697153228
