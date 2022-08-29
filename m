Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC3B2104
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6877BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661750452;
	bh=jlQGupnaz/ShlmabKmDQKIaIxZmYoROLHrevnMHaRmE=;
	h=To:Subject:From:Date:From;
	b=FZ2s5BU/5tYKLppUoAeZ0SnYhK7Jh9PhHnF51YhfSWTola9lxY4CKMXphBS1q9LkZ
	 G73tCaFPm1TkLMXr2oie7Yc1wrzWCfzyXYH0HwVnU1+dCfW1Ynp3nuEThiuGkrDkfl
	 gwOsTbROM9QUNWVMpn5hXu/HYIwMGsbBgSAz9wQEHmYAkNzWSjOd0mVHdH9hMjmM1H
	 GtwK8l18n9hjXfrL0SgJKGug/n6Em/fQt3ecJAxVR/ffVvE5tnWtPjwxSJma+B+acu
	 rHVnnHV9pgIk4E7u8m7EGbMq6kh4hk3kTbJTM3aKlkCDsxJTfL2E1WR1T7TJvSybQD
	 Zkb2rPlcXY6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5059EECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175045232.5706.9531812360361548512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86927f0bce3b146a4ad67de2f0354f72a0467a70e8e083d2378f741fe7ee979
Date: Mon, 29 Aug 2022 05:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661750452
