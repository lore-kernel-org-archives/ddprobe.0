Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40270659
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 09:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C573BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691485988;
	bh=Wd6DUOGmnhbDBjeU0vVBqFYc+S9lSl0O4FKaQ2+oXcU=;
	h=To:Subject:From:Date:From;
	b=MmsYKY+ZbatZaIi5q6O/TE/e4AJDqRpM+6AzZRYojD4G6AnsevZvfTeh6eKsT0gc/
	 5O755Jg0d95fRayf+EAcRotUAQfFZV6EuYFfCt5Fe/W2XvU2Hx0nKjB79o34Mzb9ww
	 F7IpOWM6FnwazAO1NH7apT08RVI5pgkprMNf4wdFK6sdGfJtWvPjMljkfiQYR4DLhT
	 nhRlXyP+3rTwe3rb11RqPPICbgXiJ0uVl9Au5o/Sio4Mf8uWpT5VIaen9Nq+bWTO6p
	 E+/CAn70ylEQs7X4+qrqrXuSbA0dkt0rVA/EVLoKkzV843NdHhuNntEk0+yPUhXLtq
	 rDrQ1hZGfLmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9EFC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169148598869.19444.11946265461470179951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db2bd72f809a7b2859ca5eba0c66b255dfdeabb58fe443fdac8cfd4a7568bd5
Date: Tue, 08 Aug 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691485988
