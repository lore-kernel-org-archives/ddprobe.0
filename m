Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365CAAD30
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 18:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4C0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680027785;
	bh=W1w8txvMia2D1WFxHCElSUCQjAgk4M1C7MC3zffs/K8=;
	h=To:Subject:From:Date:From;
	b=Eh/UdGT8/Q+0qiVaD6QxUnkxeRip+lSNhOvaXIiwBaj12J+AygDC5QxS8FNkADglj
	 YU/ng6bQyutjcH4BL8AN6FG0W9OrGlRp7xAtmGuyiL9iWcFg7ulLF7dpf4IB9eRPlu
	 hbTlWoPUBhBDwETt1PGsLm3xVTfKqPwQjIlFZ3/m2JfjmOifGeyZGrbH347RajuCzH
	 6ufmbAVNwn7ce7p6XE1lG9Zc7NgAb/rTXCU4qcNi1G2GoxryodtMHlyQllt8wlNfZH
	 5UaJwmEMoHwjyB5q6oHoAwHc7Pj8FTPXkEU15ceHER6B5mf4XX8ez3ngtWh//5Nswo
	 LVvE3PTnx4LIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05EBC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 18:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168002778575.28800.9986385693617312818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909b86c66344b67b28efa9f57513031f62b49e837de1d7a85307723e8732113e
Date: Tue, 28 Mar 2023 18:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680027785
