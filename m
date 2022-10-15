Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3D57ED
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D036C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665825053;
	bh=FW4vT3dc5FhiLqtFIhSjJ/f2+xdPoYRlLHKL3k/wowY=;
	h=To:Subject:From:Date:From;
	b=f5f2THfaheoezS34SLhxO8q8LPke4BuUpOJzT5NPIAAW6nLGvG3rpGH70Ghpj0KUD
	 KexZLIYSqRpLg+BkAi8wSj76UPngV6t8CaNh5fOSou9+gblhBEKj3D9fY+U0rlwFOe
	 iZ9jI4ocv/6i1/R7HnBVbmJtMdOp/weYvoL8vehgv9pwRDj8fE7Oc/z0qZd04uFC4f
	 9OOZHXcGMy8AqFhpNPVasZ4ZrBAwVYOLNn7gHpdiULPXTHq36cLBIfYnw6Z72BFXSN
	 lEOJPYX/xZeDZM5CugvRQvqza0mG02XAEdPpeRAsU+nd2VowxP03lo07ZDy8cnzcAf
	 HKV8P1yTaug1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53742C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582505333.7179.17304065451808837128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82e842bf0830b682ff384f5558923a70971eefb7b928f4dd4483bd89b0cdc3a
Date: Sat, 15 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665825053
