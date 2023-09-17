Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671BD1865
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 07:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCF6C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 07:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694935508;
	bh=B/xyEDusfwfq4fMZOXMpSr+BfmM2/zZI6t1KwKWRRX0=;
	h=To:Subject:From:Date:From;
	b=TLg0T+Z34Obk4MmHv3/rhW7g+WHk1HodW7jmKkpvKJTdohi0UT2MbgOCR2BsVSTF6
	 3ocXE8f5k1wgefZ+U/r2on2VYwH5SYx08Rlwr3X6gIQ0dK0sNKFYa7bOrBygwjafLG
	 /VXX5I9BHM9tBdICDzls1u5VuZ4RmU+N2AKKsq2CeC/W4SYqdp8MGslaOA4ORn71Ny
	 GDE4ph9+f2MbZK3gyF+8zI/VdWAOedkNY92x6erv1d48m/KOexo1Zq2aQ+AnU11nuW
	 zXEWTocg/a53dlfiWmWppJ9SUD8wTmkHWb1KBHS11pxiAv2+ixj2xI5v2JxP8uYlVg
	 JJASn17vG8bGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABEECD37B3
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 07:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169493550868.2181.17552180294421279130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6604259e8b33390607584a0fd2c1b3877cb7c9581f7572279854a506f6c1483
Date: Sun, 17 Sep 2023 07:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694935508
