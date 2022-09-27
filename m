Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD22D645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63B4CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664257853;
	bh=Mbzl2ZZqIyAvrlWsz38VTz0BhJdinVth450mdHfKP0Y=;
	h=To:Subject:From:Date:From;
	b=bvgdLEtk3+8uwqisc5sg2xoy1P0DkH5ZDz8orRSDW23ujte1tKoWZj7rUJ5vBuZHl
	 hmz0pyiB43Bmjyii1tlQ1oVb0X4kV/3Y7Dapw/55sB2bbnFVSkZQ0lj+zxI9fZU/Z2
	 hoSZpPnuKjRV7go2Cn0SeSAZyGRHjMDiaEt2A0AZIxX3wosasTe71aerRx4AQjPt8M
	 ZLQRXlsVjrzhslQkTWfYMDotyYjs0UHQzr9hYFH61Bc7NxlYIYnXo6BJYpAfoffMmf
	 7O2xTMIMPrR7qfwMIQ+RcUST70FsdyBFiOcGzIxqfwmu3hbYW5dagLZEPqtoZHj9bR
	 5JitlkdRhWPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4CCC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425785331.7056.6394087097311683459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8057d2d16938d7c1987738c0d6f026c550ab5024d932eda5afa8bb0e3ed13a3
Date: Tue, 27 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664257853
