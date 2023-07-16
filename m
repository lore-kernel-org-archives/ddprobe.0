Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BB0290B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 18:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE251C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 18:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689532268;
	bh=fJkRIB7M6WoviXaJdvIKUDk/iJQH5SmL2MaTnAPEj+0=;
	h=To:Subject:From:Date:From;
	b=YobdjHPAm5eGN1WfHEQ7V9VChXnOTY7bpI72UwSahn9EZAXzKesoq6sOUciC6z1oZ
	 RrFLtdFbe9W68KLEbrsM5NeN7V/iR/qTMaA0d3c8BzDdGWjPEm2ZVkbqgCK/UpXmPk
	 HjCjw68hQ1PJXEWni5WjUm3+zC6XIi7r2qIADE11KxxJq5/yOrXm/EqkCfx6uRF+NO
	 /hS8CeHU2H3jqjeS09pNxtuztOp7dCIoE/A5pQ3P6S9HZ2hwEAj+MWfBb4Hb9h9n/a
	 oBBEdF6Ikq/6YK9QcyMP2u7Q6QN4PBJZq6b+Ev/8C2ExeOwgFrPTITPjeywWbns+4I
	 Usd/STQDKqS1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8E1EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 18:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168953226869.21515.4240953633835356977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5c657dde085bb3dfac056798d31896ada07b289b71ef5c740aa382e4a20580
Date: Sun, 16 Jul 2023 18:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689532268
