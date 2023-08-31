Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703ADEA1
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 02:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA262C433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 02:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693449848;
	bh=qh7rFWxJYJwfX8/onSAXtI0ukJERRCUHkoxfSQDz4IQ=;
	h=To:Subject:From:Date:From;
	b=pdTHsjmPFE7/xjNMz7VZtuQvCjDLhu2bG6N36LbGBvrF4+cBJ6oWRJxBx02F6WxUW
	 Nvh3unAhQ4L64DJ76pSmpHTaGYW5xftwUOSLGqk1HeuLhGnYYXsHv6J0uvTGFf24uQ
	 E0kXDs4P3QbtiPy8Df8iSJEYHAv4bmwilYS0hNXpOfMJRG31MMShywPmXLFVGZbwWH
	 FQA4UkB3+4VF/+ukutnVe4erovP1yai2GywFi2eaCzTsAAkPMUVDImUd+Ka+VsEgzm
	 /toRw7WWcdSLo1+pKtQbdqTwqLtILohM1sTF+5iohG0vkRUMwM+d3bFpwGAZVYsXoh
	 Wuvv4QJ3mYzNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C73C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169344984874.619.17459378121458659224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7821952a9d48fa5973ebc632b92cc6553650b913ad4f7a214be2a5aceaf82459
Date: Thu, 31 Aug 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693449848
