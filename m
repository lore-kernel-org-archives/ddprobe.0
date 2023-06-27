Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DB319501
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6A3C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687879388;
	bh=Zc1Eu/+8RUJ4YClmVp3B1vfX9S4ZG5f/1xBwLrAqFWY=;
	h=To:Subject:From:Date:From;
	b=ZqZgAPafogoQ+YVfPJIbTVRshcwDK0/zgSNUrwr36U3kF/H6aB/kEfUaC/yu/yU1I
	 xVaDq4zRk47W5whXAOB0a3ETAY8JKZCWgj5LwkvCOZSDkzdrzIom2LKHQJP5EnXz9i
	 acorDZg19NaN1lYMi7cdrC20ADaes2PLt+u0CG5DI/Bw+mz12G+rSNLohm4v/VrnNZ
	 itcR7cdwoi8UmXjeHf58wFyYivIm9PW/jFMEOeeuI31KYiGdpW1xtbBj6598AFLPUC
	 RYSUjnYNRpA6MmswKMCIeEkfvs8mV09Ivu0/8myjmKhF9FLcrG3FtkRM5MdXpFcd0Z
	 ANXYw0cZvZ/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC360EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787938876.17800.11675317844826406991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58b14ff74cac1be4be56faf37da548d1f563ad47bfd2656ad847781de41baeb
Date: Tue, 27 Jun 2023 15:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687879388
