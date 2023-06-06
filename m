Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9242DBCF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 14:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5B1C4339C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686061925;
	bh=tsQCCl6CkzZQXRljerzoDLbC5MD6H5KG/Fanp340hRI=;
	h=To:Subject:From:Date:From;
	b=ZxS8nYEE3zgSrX14TqFH2DDBgBcFueN0GEfUaaLFuCyRGE2EzSCdHjr0TM2OzrXxx
	 u7QQG1V0gyJpvv4GlkvQnsjxOBAumOYCWMg+bX/Nd32Ivrwh1vz5fPfkbG9IzaUhvg
	 Z1rENLfFb6AMYz/l7uWsSDqsYUjODyfM+Nd2brUCD3bC3HnrRuTXfII0rdAMXltBx7
	 9AsbUvJUOfS7xr8afW3B0XPyrtaYdw9bnRqwaJspWau2otnCkUaboCOaQqu4+LpAwy
	 aYKws4IA8N01S0AL8f05ujE8TX0wO1pPf2zWbaT6j52znhSNHu6rKHtPcWFFYxOqfX
	 NbtJB3yOgM2/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E18C7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 14:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168606192577.3205.12935305131529660101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9cfc385d9a11cd84bd7638beb1cd7ec10a26f025f4c70d761a62b252feaf8c
Date: Tue, 06 Jun 2023 14:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686061925
