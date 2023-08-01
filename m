Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9F6263D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 21:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EFDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 21:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690926728;
	bh=s8FgQTROr7DUANfH0/NT1mFdf4lY4y2PD0rtw9POMNE=;
	h=To:Subject:From:Date:From;
	b=gxVRnwdElHTmxzc3ox3sTx1dnJYOLyiOf6U+z9W/axNyTZraj78vCQVBxeb28ksj4
	 4mOF9pVaMRKg7cE6afT8TS+BQpqdqa6QV6bTJFHFeHIbJjtA4IH8YlDHvwugZD4Pm3
	 6EwOVxAjuhF9F6L+5lp6R8UH6mkJF2+XnoybExjU+qpQSwe7OQl8TuTZTpdA99Q2dX
	 aKpeQm+PQpIEK/03syPH1B240labgjxM065QmYqUKrq9fV6tP9QickrFc1xsezRhQU
	 hxvE2tr8GK//x+BjP/AxbEZAyPXqi/6wBPbd1wqm+JgTSp9SrpPDTp7D9kck0l1Nv2
	 HIjZAjJibEQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A733DC0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 21:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169092672867.23050.12457361957197562874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5b306f6eb4b6b32f8fb2a926ba579f72eefbc6861e34267988f96630013041
Date: Tue, 01 Aug 2023 21:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690926728
