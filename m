Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFC43D72
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E67C433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661458852;
	bh=ZDrjv1NXPYGoQsPUIhf/q88dbG2eOaC3vV5A3QIF9F0=;
	h=To:Subject:From:Date:From;
	b=qpk9Fc96u38H5SLreuWG2bmWXZ2ja1RxggCDBJgbm+0sQxA0HFPRDg+LOR/tJgbOD
	 ykWzrmM+SJb4DOZ3bfEOl5W69wsCekdlTNdHlsUiRxtbo602YCPpXVZXAYY9V+IUvX
	 H4cjp/Qc2dOO9W4uyLhxuvdBZcazihN8V8fVizhLgumprm95DK+BUkpiapdak0Jl3M
	 /3wJqw/Kv0UA3XXmTqXFWlDoAzUzhC/wyGHgIECxjMBuTBqm5sdA9IGjI1CdtHzTZ5
	 4E6Qn3tDZyhthCbhLWlrGN0uhOwfxELgwA9G8B7hU2ZihzyemTRiSgZE2VJ2DqYLl+
	 x94CM+PYNDTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5568EECAAA0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145885234.19460.512098576671574700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a76dd219080d73642c666fd8dd0d98d20b0f1447e9e131ec3f77279814f46b
Date: Thu, 25 Aug 2022 20:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661458852
