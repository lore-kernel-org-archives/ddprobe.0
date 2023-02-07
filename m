Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1400E2F3C
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 13:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7877C4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675775285;
	bh=sHMorajSikte8pkNTBHQefkWjQC9YdZz4opdZDl6D+U=;
	h=To:Subject:From:Date:From;
	b=QCsIdQCOVAaYDauLMcy16FCvRX0ZUYDk0q6tiB0ZmY+ViFnTPPdumeKLrt9vQkaEP
	 nvdkFou1ud0aWWTLqXddwvDIn48eMRrKtuaxIzabagVMvej7US3QccARgH/k8ZV8zx
	 PNKetCytYQ4/tw0m2G7a1eo8kemiEsOO7i2KrplMX6sNqu/ksYHC0Acsl23p+JIuTr
	 Lnm5BtnvM7wyn7/VuBB3P8Cy4rxw7xAmngC3To5bTIITu1QiJp/CLgV9i22sO21dOt
	 cGmJzjZvEERgtHzoOb8UUF2xAmSe0+jM3aDuGuInPoRJci3CXuKp8mT0EyE6GCmEq/
	 PLzuweljjV9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BC7C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 13:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167577528574.11099.4235696994275590865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1b7cd25e26ae1a9061e00bd7c4f69a90148e2ae1c2049fd38f968176c944a7
Date: Tue, 07 Feb 2023 13:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675775285
