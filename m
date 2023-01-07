Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEACC10F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94E9CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673056887;
	bh=eqkkpx2EEBr//kc9fSpH4VwTtwE6dtLfG2MltUqC6is=;
	h=To:Subject:From:Date:From;
	b=NezIfecIbZAdPW+UO+jrCcDbtqc8XC8xJqsoFo06dikglQIZUNWJ8s2sB+pW/WT/H
	 HpPEZoo92F8mQitcnkEXvC7ZLaq69Csw4vZWXsRsNyXsqV8HStLvpKxvVw3Dc3f68q
	 4HAGvAJ08nPpA2jya1FQ5YG0hYHD03DgojeY4YMhZ77NgNzifubwAy0MVuLxb4GZO7
	 8r3Hav4zI+M2MzZS78eUCcYW3dNgn/uSRJwkgK8N7/3R3yebGT0SlXNukwM6ADnWlJ
	 UiQmFnq78G8gfhmKNewPf2HOjCFa9fY0JDU/CEyTUMl95szjojk0IywGfiYfDsLmCU
	 /n8zH+vVoJkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFB3C5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305688742.29956.1674287792089004486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4adef4bfaae9d8008c18c9600620acbb158cd2004190e4eaf4791ec67838c8c0
Date: Sat, 07 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673056887
