Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA7A748E
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 11:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3BF0C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 11:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675943466;
	bh=H+djXdjgg6TTt3IiXODlnlASsngNkzyUgX2RS7NyhoY=;
	h=To:Subject:From:Date:From;
	b=dAGi9xJsYEAyReoFnrCD3UreZLy+uh4qEw8lPmNi4I2kfhxRg+Ht6sMSxt6ftiKnP
	 1apmlLh3TMdUuoaZ58xNxoGzoHBLUpRofRIn0sfMPePAysQ+pM18kdx8QX7XwbMHzY
	 ZnbjxIx9rNL3bN3Rw4k8B8fOotAHdLh2BiOavb1WT4al2q+RPgyqqXioQj0EugMnQZ
	 goqXCaqg0YEgdFqKtokeWuCzkE6HNkcgMjCqZfYELEDscstKcZMnSfGTkCx0NpQ0Ws
	 3nO7Oi6SXIrMdskRQX+Vazr/wDkulP+jDY6drTC2sOzEpJcUaabVZXX4PMZO+ziCcQ
	 XUjKIcZDKH34g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7C4C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 11:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167594346580.9318.5079948123174929675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da93b5bf3d6c1b2f7b4b5e154e0a8487403413355e54fb67789fc35a08547e9
Date: Thu, 09 Feb 2023 11:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675943465
