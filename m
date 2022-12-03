Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDC7185F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A175C433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670063454;
	bh=yl+ztUefxrM9HUy38Rnb3THdmPO5Lhpw21zRgcgb1ag=;
	h=To:Subject:From:Date:From;
	b=jF1925tE9jgsOEbsYjULAxxV/PihM02twv3JQVOooZa/d8pklA9uPD1n1+ylXJOwZ
	 h9H4z1BGcy9cZgcWZmOpo1S0SLqQruRHB5gzj9JrEOYJR6mdOnqLto/cp3PBOvlhfU
	 cWgIF1ErvMpFLz3TFHBggrCaznQb4kSpiWjeySO4nLE2cBAVtmBfW0YE+Y+aCZMpQQ
	 QVMU9bv0zgwuYGdAny0RK+qFcIryH/u31pGtZHjnRl3rqodyBc5F5OxO/HwQBCZWb1
	 5DT9ZrE8exr+opcb/U+Cx+ZA7dZiYubTxtDglvgyL1AZ53C7VQqKmEOz1ItFd11Gr9
	 Te0BcKzzPpnXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA27C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167006345431.4935.8007529137465741290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9278b9c3fc4b25582c739f583bc5d38e20edfc85eef7d2b214c5ef1fa2ed4b
Date: Sat, 03 Dec 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670063454
