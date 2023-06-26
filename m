Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692C8125AA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6FDC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687812788;
	bh=dFf6G/6QcSK0za/G8O4ynLPfsGp4gifxR59e6IuAnVE=;
	h=To:Subject:From:Date:From;
	b=cP8NGqqV/JbdCi9sMiPLu0IupVfYdF4NbaivSICpQQUXP2U+U/OhMoBRMWE++C1A0
	 jPMknnhepUBVamlpAFnpFiWZz5SeL6ehTEc1Ocazf1ETxC0iA1OjJOyCYCfCCAYaOB
	 Dsd9dYlYdYljt+GWLEgolOE47WrLWQRdMUW2f0Y7Av4DJR7LjkzHgOS5ia9OTAUJVE
	 Tg3APzxC/5UTUNP4w+dNBwQivYe3lgY3QsQuHVopvLqRnve4umC+F1fyUK3egDQA9g
	 2SFPF0jXSInGt7qGbW4Zpu86+GhGgH6Hwe7Qh8oXTXeE8KelkLa5D2kQv53gKOTRO3
	 tkBzTm7+3kEdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC86FEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781278869.15616.3653909602237151152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08c4e50fd942a89dd96a09d06f529cd1a3efde4608ca7666a84a6e919c19f93
Date: Mon, 26 Jun 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687812788
