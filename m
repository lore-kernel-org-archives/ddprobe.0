Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA73433FB
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3F5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666886454;
	bh=hrYIKHDaPcJRMj9bcFbVYtdFtSbNutLsJMXD+sHM/yE=;
	h=To:Subject:From:Date:From;
	b=jITQajm6XcaXGsAo45C+n1uX/iAe2rre2YUwM+eKRl67y9wErwO1nM9SUbPBoYhXw
	 CL4BVnuNs4erTgBWnMpEcdk/z0ccZaG8/Pxk51803HxCgzx9UFlVU71B2mv0+utimp
	 ua02alelma8XcZE472NseXHKGEccUNy4nwns5pIdaLayJ/gm69NO2MmC68/RJLn47S
	 0mOilSUaqo/GPCR5QZoRNXXZeuOEwDliRHtCKpf3d7CAcqb8U6sWol409C8rRopNaT
	 X6lPxxi2+m6dp1vQkya51G7e2Wh8JscjC6eakk6ZvYuCiodk96HeeaRHLG3lqenryu
	 fBFIM+dSUbg7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A63FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688645435.25609.8038916678255447792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08d4980ce2f4bb3e76e4e91814a84ab03504f3a50c42944ef47a8495facd48b
Date: Thu, 27 Oct 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666886454
