Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7661A539B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E739FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686216785;
	bh=h9VGy5Vhqk0kGsnVHbpKAY3SbAQEXfCDlsKajF8/jTU=;
	h=To:Subject:From:Date:From;
	b=fXdX5iQ0DqanBAjWQHu5WuuxfmHK26XRydqNWe9pQvSJw2R/XwmjoHJj+tRWuKky6
	 qsRyRidL4Jegn1ydopw61Ymx4RZEd6/sEHuRjKHxpj9eYTuVvdDUFCMOr3oqSESV9r
	 e+cjcfDjKbOKHv4gAmxprh1oy/jlcq4Q6AqTJlNK1X0+X8gPncnKPbt331tIcv/cC4
	 uJDEaceIJLjUbuaU/LR5zoB76pufvOlloGuTjpuC9OzlbXO8SQ2ppYsKskPSoT9WVd
	 nvl4Cvzll8IrxKReMuRYIMAQcy2bYdi85juzRZhk1pFg5IRZzyGTSmb9yltsrG8Rfo
	 9P/7JJNAgI4Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE558C7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168621678576.7096.7335160152850161862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75e0e73fb487432d3f7fa5ea726494433a32f702cfe6f32f2b3e11c7ccaeddf
Date: Thu, 08 Jun 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686216785
