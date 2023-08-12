Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5402E7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEF7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691799788;
	bh=qWJkXRALJ4y/BxJ29OQ5jezuhkCmeSCkQi5GPcpvNSM=;
	h=To:Subject:From:Date:From;
	b=QQj9teyMb8HmujZNS/nij4N6kCQOsmj8VeSh/odvOav1oveCyooF0Xt4l0LxiklSd
	 DxEOVUiXfm9B60Pyw7yqf+XC7cd3jpabbomPVnvOv4s4MVhkJStJ0P5Ia9zIWHnZCQ
	 NpPC2FmCU3RUhE8XgmvmljAY0lIiMP/D/vDoLEb5fGthv7/JLX37S6/neTWnh/X6T3
	 Wskvgj7AvcFEKTB09YWBXkevLZ8WI6BUipomOOw9cstuMaKM3ja1RCTeYF1KP9ntqP
	 b8qJQfLVXl8gSn0fNr3t6jlHtM185h2ayuHXmw/MPsoZL5Unc7/b5ARRyudGPnwhO3
	 YLwXSA5Q/CsIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AC6C001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179978866.27806.3733676603704218377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aff733a30ceb232159e95b9d738632b6eb8ec4ff7bdbb9f8914d8ce1b3e03c5
Date: Sat, 12 Aug 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691799788
