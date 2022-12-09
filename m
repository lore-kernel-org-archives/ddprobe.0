Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A193214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A09C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670619687;
	bh=mgzQdAuGQaB45Z/ghUHverWNt6qnyVpMU7sGtYdVhJc=;
	h=To:Subject:From:Date:From;
	b=HszVzHj2X5uSuPewpa//HO3dUPc8f2UGXTf1j6Z97Nk2u9LdmYnybQJeKSn+e2Bj3
	 6UUupkts2K8WZTl7KqL9PD48zkvHzKAO7b3iWkesTcEyqcdd+SUmSFS/BQbMt0tC8E
	 YRsEKoOeXjG3yLxCf3izfIrFFP5qjHbyRB3OYqWO/f9A2dT9743+9RTU4Yg7N1xMJX
	 dwQD86urn5vt1m52KCRQ0JJaCK2qicqmKEF7V4dQJxiLLVkgC4q3CY8XbXYVBRUYPm
	 NSYyWPpP7PCGOYssZshjuzgmrMCln2mzAVi/XKW8+vfQEAtllAbCl0H8/hugN1Mf9z
	 vIDHlMzJv6UBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C52C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061968739.32413.17425682428072077840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80097534c24fcc6679101ce00b546493bc01eb2c1bc8bcc43a508c60300e57e
Date: Fri, 09 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670619687
