Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04F13C20
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66340C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666272653;
	bh=rVAoHioGhtXNMMfRjsGN0xG0HTyru0lbtsPVgq7dfag=;
	h=To:Subject:From:Date:From;
	b=RGGO1F/JjRFbifk8iBizluSBKbGtqLFhv4pgozH5A+anAc9Kl2PKnB69B9FwLJ7DT
	 6bXnITZB2ZOGuK7hrrV0ZBxFm9lVZSnevc4HtJD8FKW6pqF0YjZSn+CgllD4ySzayp
	 KJWMhnwBja7rF/oQRkVhby4lTgEcrX/j79hYLLvp1wcHCfCjPJ93wS6/GgFsCSJBi5
	 yrhfYusxGadS0PI8GMoFk03Bqj3/BmsHcxM2JNZ7TwKWwUUFNN02NrYjz9hmYsD8n7
	 LZDBwAZEKoGknXS7SKV4IKrdG4DMxqpMERcCngurRrDzeoYdMIg788bItg0wMewq2D
	 YcIqRPV2NXt2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F787C43217
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166627265331.8837.12128198470927894829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b04bf3c323cabd7b9041bc73ebf9f6d28b4b2b2e4cd3830c063dcdd2c86f15a
Date: Thu, 20 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666272653
