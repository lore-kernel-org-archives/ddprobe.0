Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6C3A92C
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 20:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0872C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675972925;
	bh=8IYEODTHLcw5MGOWnuLTKalSNu0n5+Ch41KRHiwm1pg=;
	h=To:Subject:From:Date:From;
	b=tNMHuQKn+LzZGs25fROYXrhX6l9kN2NQzlUOeXvYIfoWxe/+CvnQTzSEmswPAmJsU
	 1K1bbQ0Qq+ik4ggVqKxj3AkU9WNcKpF/JullTuoM0KGRXAr2hkm2ogigIHksqIoxAr
	 IPWPVMyhmP07TJ7VTC34hlY4u2rRajkGwOn7BEW756QNxWV+lvRhIG7D5ZXxOxBqjP
	 LbQjH0LovWagpYkse+/Lrzl+MEDsFDSYuQ+505B9z+gvreww6G3Su67yp1dmWyPW7+
	 yekjb2EXFf4CUCj4ZZYzd0SHPNIPOl3GJjQpy+vlamUQfq+NQ3+z+GS09nnQOPjjDb
	 7iqnGSeLnbgHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FBDC636D3
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 20:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167597292573.21942.3632918400186899183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5ee0bce3220d5efe4ad3caa8ddcef3883f481e2c8689dd96ac9c20c2ab2a32
Date: Thu, 09 Feb 2023 20:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675972925
