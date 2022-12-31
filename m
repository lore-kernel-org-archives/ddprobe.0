Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9BE3C30
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF38C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672527087;
	bh=u6ow4caU67yeNTBjuetWocIJEMkbwufPBAcXHKXp9Gs=;
	h=To:Subject:From:Date:From;
	b=QbxU4EPlVV/daRC45/6ZXgkH1oW4MRdutakNPc0gOwBI088r01JQizCh0mvZLKuUZ
	 mWtnnAVuE3uAeg8WEtkqhQUIebE4RPv1ivcGCPmh5/PqorgKtzdTkmIhy7F5Zt/H2D
	 PkXhhg/LQp+0HxiccvhFDlL2jmnqiZKQyakdfm8KNAxBxQrIvDDHW/N8kJ50ioEMzn
	 IrFJkWafM3GDtZ72Nhp4P9pK/jmvqQckiq6JZRyO4rWPSluUNRULtrMfy2Pl6trku3
	 +wS6BKX2MwhbsHvEHhIhYNTsVFdpdYFPuAiFSKEF2m0Rkt3BQvF0odo/QfrZswJORS
	 mHkiUA/wuT9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F78FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252708738.23352.1491486659068450272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758431b6b74bf5bcd3708d5a549aec453e10000d4535e5d184bc633bdbca3522
Date: Sat, 31 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672527087
