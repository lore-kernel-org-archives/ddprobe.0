Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5929A656
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 05:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E4BC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 05:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686807488;
	bh=k8331NqduX8nrqdk+CmHTD/PILQ9+cjaeeJiwaALSII=;
	h=To:Subject:From:Date:From;
	b=eDQIsyhW7rbkSRRohTfFhAoarn0quokj6noD5XJ9XomzOXGm0nra5OZ5wkaKOYN++
	 YXKYfTCw7gztHvithgErbpMV1zHzsMvom03yzkbGc/6fJXXSbd6cTyGc6QBhk1DR8w
	 qqy/+uX/9D98B1J69Gq9eV2/DW2L4hwohGz8l4y19eKwbMicwt93/h66AJLEOmaNrX
	 sGCo/GBykPqpeFca4/yE1vHXYTOuqdRMQcvcX9KKsDie02scOjhAfwekZCF041Dmqr
	 h85aa2aPob3RW9N/pVcy+M8J4eqWWpWuyRbcIkM+crx/NrmFQLX+b1Xz2aAQ3V7GxH
	 8g7Tf2xoLzBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5557EB64DB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 05:38:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168680748879.1227.17223512667063938230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa7aae3212794548dce5ba81dd0e277190ad75ac888cd33065bc74d3983ce71
Date: Thu, 15 Jun 2023 05:38:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686807488
