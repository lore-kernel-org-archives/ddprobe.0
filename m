Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31B3107BF
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9EFC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670267454;
	bh=ymaIbZ8okAfwrEkHCEI7H9PNdEzT89ytrfHObqncpmQ=;
	h=To:Subject:From:Date:From;
	b=hHRGbt047cQqurV0pvlJ3r7uWETC27Mumwz+LLX/DMpGlao2wFc0KGKxfYEtqgpoS
	 s1q1iVAhV8MGgdUEGLPpTgukC5m6h3iPDxCf/4lKhjMxsRY1Q3x7ql4kuwps4x8DtD
	 QePAtbsFuA0fvZAF+R/wo4q80u34jcKq/Pw4g/7Z70N+/wR6W7CGYu53aB8Bf4nS5Z
	 k7Kkv4P9Ef6DBO/kcfYpVWsGtnYdgQFXrhJJXgt4cG5idz7jwyeqZeMg9sxucy0s5f
	 z1GQ3eYO+edutp0bdRPF4c9915g/zBNg+zSA0KPFPRSLzn3KExaVpcwStqFo3WhiP/
	 GCXkvZUYtwfAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57442C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026745434.16595.10309160215558670348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8da5f31943c4fd62585108faf43675257377590bbebe68816c44cdd5573fe0
Date: Mon, 05 Dec 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670267454
