Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4016364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9BCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666485653;
	bh=kx6vydgPbi5T3Oy47Fiv5MqMHno+G7lA6Ll04IWgVa8=;
	h=To:Subject:From:Date:From;
	b=Tx0FZjrU4ha0zojLLgusCxi3RvVVbAQEsvZ/vZHGgZ3utJSFf2HjHnb084XE2KHxV
	 XxKLp6/sxtlWdgRlA8+y/Nk2JdSDQzDUz/unCLxKZy8AuZSgP6MJ+CwS5YNdYpNeIA
	 v4rzbUYlMi6dAmUCJzt67eo7yoSoMRP2VScaoHR7YBAzttzpJPTmNg9u86m+KUKA2o
	 kdGfX8hyyTu+FCwLtCUeyfmYSk2SnDbPIsqaQnMZm+taDT3sRE1Wt21kPEG6erKRzp
	 UWZoXntV7RftCd6FnpLIZb0KdIdpNA3rjGl+eYz+sEgbffmWcIyWlX+CnhLFLD9nWk
	 cArquNQma059g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544B0C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648565331.4091.4847037353943322012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653e160472fa2d68d907b39de2fc7b6ca6ef435e51a0e31325e0b0cf27fc0f95
Date: Sun, 23 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666485653
