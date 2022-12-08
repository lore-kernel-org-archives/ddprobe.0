Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBD8629
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79145C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670473854;
	bh=K9XtoJsj09L1PjW+GwU+rwJ4ynGDOPl0izQ4noq9494=;
	h=To:Subject:From:Date:From;
	b=LXel3/MtCOOWqT0LaU0Nq9WOtLxPjcydHe2svoFnF6swV4MFJSmbvjU6jqt3ZDPDG
	 Mth6zae2FVdvYGVo18UasE38WDqGNWB5368xxJ8NGKEEEVCtU6F9xViVm4xItdRobf
	 MMtJV1gCUtjPw+umbSAxhgLRXDgoZgcc35V2C1UBv8SxqRUjLhjwVTtkYGjf9wbHTE
	 KCokVw9tqen59fXFHq7XnykMhBbYX93SiV2fP0hZvW4Uu7vsvua1Qu4+GFP7GHeng4
	 sitArq84aDcky+Jk3icrPhn3BV/fneDoHpj2mD+O2GwSn2q2CHvz+ruoxJmYA3Po3Y
	 o7kTL71TJTHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60842C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047385438.9195.12509812835727289748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988b8309ea890218ca807f250e684b221f391d7bd80594c79bbd713f3fd5ede6
Date: Thu, 08 Dec 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670473854
