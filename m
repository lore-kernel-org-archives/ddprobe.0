Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA92D36A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD9CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665843053;
	bh=YQCOWM49oXtVBgEcXr5PjxJIlRf6Vri4PuWEw62W+2w=;
	h=To:Subject:From:Date:From;
	b=VauHXlRfxRUf78nGbYsjGAfmo1lGetC+6GyokSm5k20i0UwspHGowGzL53+mT/GRt
	 qMEpLs8wO+yKyTpg19X+hTQ2AD9fpadoy9yUO3ZXitLPTN53dqU4+LWvraWTZ+eMLW
	 GlPJ0NAOfj7+Fc/momgt+6WQTGzlqpgraUgTLi5ioyfn2//d0ryiKCnjBIoa9cC5Tv
	 oUknBZv5VTDX4oWVJFHKTk2yN3i9d26iVCHcrd3OR7dJ4K/qt0/xJqm9TJYOGPByVu
	 Lmtcq48ZsOEbSOGVK0HGygNdvbsWuGwZmhyjEzL+ztxsSc86E4KmJToNPhoih926g4
	 s8iM/EG1ZYxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF5BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584305337.4543.12503511343331704162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dd40c745d57d6141495a0682d74d042de9ba6e6a5203c9dd558b49e7bd46d9
Date: Sat, 15 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665843053
