Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377078BE1
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 16:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F92C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 16:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678464305;
	bh=oFlEClsVS/g4jEe9LOpG2CoUanivCJAhy/JmtY7JCVM=;
	h=To:Subject:From:Date:From;
	b=kh64j1NMukmQUoKAPaQ4OAaJw6DyWXP0RZ2R/Qkqhyl8pG/R1L6FzOickrAWFNMvv
	 cjTe1HP+NXF2dFG5Ri8zpB6NEaDxT8UYQGEkcH556sF1nH0ROvOsZBOzkzBF4KXeYn
	 QUgtA/49f+Fn2+eMAg3vwYHVPhNUsA3h0feZ7zrnQrhiOyjGmoTYcSsIBQcXPSkJyP
	 u+Jiq49L7Q1QQWFcG0Z3wfMM9c8Cj4VdzNaOCY/ek4AMKWdS5NR67RNkdXMbFvfawd
	 Oeo17OsATmXs36JWhXauTDlPwEn+gApwxusPgcvqxiyOFZDato9Z+U0YMOqoDZ/YmW
	 ItiJhy63uI74w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD45AC64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 16:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167846430576.30587.17829204172530640692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8344f5cfa5e4710ccab4d0b7a715520d9a1c676053758ff11c3977a6d12a68cf
Date: Fri, 10 Mar 2023 16:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678464305
