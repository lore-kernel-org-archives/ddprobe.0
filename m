Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B32374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7217DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670382054;
	bh=2oFYMnKQS+8LfPR8K4jfQncIPe/SPN0KzOneRUgUDM0=;
	h=To:Subject:From:Date:From;
	b=Z9H0yQzYPpmxiUCY6IBr1qgafXX8/4B6nRuTUwYaEi7NZPO+PukPVi1K/mpvQ4W64
	 ZydNEDzLaOQG+/C3I9lY1tJaZI73xaYfXzFvbRMBtE0jos38Q6q11xJHYq1jdqw1Cp
	 IsRJP25PHs6kkD0bl+r4rvSwMYWKocGEBdcHtAUuHCeeAaMHpBfz+66pn1up29Dml5
	 R07rKDFI2G5sC6XW3gp98U9TiJCJKryttGj11ai97sTzCg1jtuMep4ywfsqBqdnfBG
	 8uKbq9k6XREDJrHPhTjueQsabOYum0Cv/fZRodx8jPDpSvZLxhEmdQ7MrGoMa2BPrd
	 CDf9WQrRJQFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526E3C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038205433.21669.7688584993733098308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca7ce65baf6aa4824c7639e24a035571e7e0a48771c56c326da94734d79a971
Date: Wed, 07 Dec 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670382054
