Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95091FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82891C433F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673947287;
	bh=fM1ng2UpOvyYZyYAsmHdRWh1t3l4ft8EIeYWG+03kAU=;
	h=To:Subject:From:Date:From;
	b=KIf81hOFvHttD4Unk5ncWqzRgPNbHD2AGfx2S0W2vfg35wPWd3CqVjzEwisy342Sx
	 dCkTAtwhu+Yx3EU+SkX/F4ZXIA6xNFxOMJ44TZdnmpzT6lnIfB2TJAG0bC8FD1jMkZ
	 3jxKhU9jvAfqN7oM1eA3Js7d7w8HC1HS9ygYwrFa5mggcTsIwRwU7/l0LJT5Ygp2gR
	 MR9UxJJdKyASycOtJQ0ZG0wdv04WBtgZl3g/KY+/7gn/izV9OzcH9s9yxpId6uqsiF
	 qWxKBx5cMUhynsCqzPkYdmehtgeGd6DUbYaRGoZMezaJZF3qTQCTaS1ygoO3/1ZibM
	 qnDRvI+v/ThZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BFFEC63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394728742.3597.2115859201044191662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8d616c4d4f169bc352f7dc991d27b5a6b26671e278911339e3133326c312fa
Date: Tue, 17 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673947287
