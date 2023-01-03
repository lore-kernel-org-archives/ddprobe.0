Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC58C28E1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0ABC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672745487;
	bh=FJNMydjDNRmxGchpcyrFln+6HURAMB6mF3kjoF3P9MU=;
	h=To:Subject:From:Date:From;
	b=FvTtZLED4O+HlG/7w2KtSbqPMnkW7acQsZ8vcxFjtI6RK5xOpjJ8q6PWr5EO28x6U
	 ZPJH4zJGj2/UQmkNyF/CqwuJ2n6qnglz+ELovJgqtFmF5OlJ56hu75v+qi2vomyHxs
	 qigAUWM01G3JS11z6+pN9+zACBlyNb9wMjuNksdJ6anx/CLvsSMwHRnAK1KCpwWCJ5
	 ++m8n6T+3E7Z6X9Ko4KUSAaYXPcGCOBZI4C19Bc6VllmGdLpT8ISxTAnG5EK0VhGdA
	 qalb4aarRCccnR4CFWGkMK+vpr1hE81TmF75IPYnIzBsSJZPBweWZ2g63ZUt6njibf
	 toiR95Ys7Jl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C0CC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274548739.27345.17162241386032154630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a286a63952081e2c8d35d8f5a7a59de2d0befc2562cde95d9ae9d02d78046e
Date: Tue, 03 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672745487
