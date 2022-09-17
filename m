Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD6A366
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D572C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663411253;
	bh=ZM92YKM0DaSeah6IBF/0oFH67WHIZDolKzq28WyW/no=;
	h=To:Subject:From:Date:From;
	b=ZK55iqnenD+MFOszrufYUkgqUtAGsaplULJ4HxukKknx0SM1aUm4BNqGc6TFOpGCR
	 uD5l2DrPDVp13db1fa1nreOIi90bTxivtyTmo8hqC/ioT3pHOMRqYOqKIxGkLlkl2n
	 fcV6EHGWygqKwCdWvtJBedMAGolMZ3Lkwp8jcwkD4kKlCblXhuo6XM1HDUzXG0/GRn
	 inHXGldzY1XX+V29tevawIUQYRpzr41/M9FDsXurZqZryygc/FSuAuPRSbtfyu+PXE
	 enmo4eRM3OIHKoUwzRkHBJO5TevVLqrRP+q8PkBu8WA/YscKEWcm9qu9dFdPHAg8WT
	 3rGywEBfQcpJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521E8C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341125332.29055.8991093593505107212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f5dc855243e994143dd4d009e970e977eb6e541eb2617afb9e0c28bd2503cc
Date: Sat, 17 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663411253
