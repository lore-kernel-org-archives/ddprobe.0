Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D671110
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67E09C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666784453;
	bh=LnYp/hOHj1mwVQDxRn7SEhEHiaYA5NQYY711jil6pdE=;
	h=To:Subject:From:Date:From;
	b=QvzurEWm0WDyNF7i++Cx24PgJSQw99VbIOQDiY6N+OxasiSJMwMaSK5g2kKmTzqp0
	 EG38KvLoFzovEcdrXietzdX5wV4Tn7xDyfIJ6y0ljbVsCzafKsMXJXj3cfR3UiMkAj
	 /W/cXtQsO1YZKaxHBtlCgTDhLtaNVYFHUkuwlkNMWpCO6jmc/i9zDWhPMGsiS6Wvtz
	 BeD5s02IpOsNTsiAUEr9/5OWvOe5Ao6vqnd2kdS/yUGNiLG2JyIwqSKxNde9TeGIxV
	 oSvN6hvPvL/41FEo0oCUfSKCsS5HOiQoi2MYwVsBzM0mz/DZwE/25LWtfTVABtzmRw
	 EmWCQYmeDUiRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532D1C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678445333.16138.11938751543923997717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42458d9cd6beb32e6a60318f3764c314f3a342e79c445eafb3e344ade8c6faee
Date: Wed, 26 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666784453
