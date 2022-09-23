Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FB3441A
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CF2C433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663959053;
	bh=39b1PX2lrcztQBgZn2d3Cw/t803PZ3QOZMDIb033MV8=;
	h=To:Subject:From:Date:From;
	b=SEFMtFmeZ4pj1bdnN0YJGQWv5dWz3eHbHicrsE4HfpwgqcO86CBUTN8gVr+y7xE+h
	 nNz8Adp2CoJqsFRrCcbY44PJOIUAMTHkvtQBIhFWiWB/ar65ajAq4kXljp8t06oNRi
	 TYdjG/zMQy21IUnNx7aLCka5QSJpJzY+pm8O22qljsr/Eh2Pw2rKw+OdGG2w3bPntb
	 DlnICgg+FiOwhXc+HzoXZg0kUNiCnYMGqY1JcGFIAB9+77t7QQvJpmzg/Rh2/lkg1p
	 +5rAU5TngtjmXuNdlU4T4CbX0K9ztkHZVWi/dVWNsKKPD66TDwwcfhU9Ykyz+/jxtu
	 FZGw2oFxkMvYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F075C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395905331.27962.10393333633156074881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7615c84542f099f97b194775a15a0a283ff9102c216cfe161ecc54d39175ac
Date: Fri, 23 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663959053
