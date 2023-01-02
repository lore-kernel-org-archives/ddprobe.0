Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99A57C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86275C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672653087;
	bh=nUJqGjnwftnavKY6kwYO1pLjJshSEVJ90msZ5zHetRw=;
	h=To:Subject:From:Date:From;
	b=RmeMPhxt3vBJh+kAxNJU0WJUrPmvPIVu9DUp9bVdY5hAdAbS2Ji8CxAuwa70h/hkH
	 QLuNumJNmhfNUUFmsIeup2IoG86vbjaDje4CdDpbd6Kd2BXJEQBOxbufeecfsHJgZ1
	 sDCSV2pwOZsOfhM2KD+ChprNjDyIL3KITux9z143i7qP/SvW0DRzBcXC2rAYfeZ24B
	 4Z267pvsg9czofJfv072H90THMGJLW7ukVtWY7JjLt4o1VGsRwz4ilUeDO613VE66s
	 G75Jz+HuUBSt8e6OH7BAuO4IU0w9sZJVGhBATS6yj6YeulmsZEOUrfKm2RInsRBxS4
	 NaGmWQwA9nskw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A65C46467
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265308740.16500.12957034743263704030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f519ae676125e030f313b752f8cdae51c17e02eb5e407fed0326f90c2bac80
Date: Mon, 02 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672653087
