Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9BC1FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C7FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661479852;
	bh=n2tc/Puz1ZE9iy5+ucqYEi+uXWiR+GUNzWhsCvtp8QE=;
	h=To:Subject:From:Date:From;
	b=nNghPrCPlPyIh7uKNIM7SHgpmdsf/i5eRmJzmWEKQ7SZhOa0X+voRPFCESVXbw3QS
	 lmpbEuFOaEnjoAGT9hpn4Y8TQRdOnUfWIp5c3CoMkGvZw+FxsBvjTAIhkegXbwRvzi
	 uOh2D0msaERXpZ4awEBwC0kQ9VvfzQZXQHFoUVncP7FBrhf7EMlARjw/YO0zoXWIxi
	 OBllgSQ9qs90xCjbzEKeocpjqKFm1M1dTYrWZ7J0zYdgjYAjfqsg9d/Odm2aWPvLJg
	 RLfalXoteaW+SGbCRUdPQYEiv6MQ+BqsJUhI3LrTP4SmEd3I7LKTJUXEWheO6sMM1L
	 snYkgZ0sesyhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CADECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147985232.4314.13888067636047826090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbd50452777fe2e16444986fa007b69a1f08a86b7abf48207f155e8726cfcd5
Date: Fri, 26 Aug 2022 02:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661479852
