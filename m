Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C231622
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 00:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYk7AOIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB081C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697503028;
	bh=/mz5r2EmqmbyKBwZwr/tDvjm6GOVLphCI/ofQV6kN3s=;
	h=To:Subject:From:Date:From;
	b=NYk7AOIb/ZGaFU3/sKAfxkj/KuYkBMznv0jWRhIQPB6U5bEEdjT9L1yggTWC0q0Vl
	 D4gM3kPIhxSVHvmW3xKFyC7vS1huJKNaP2wP1tnwV+/LIbbPbxlFkWeWD9zS0rTe8G
	 HHr0AILb4FWX2hSpG3rJYI3v5nrWZGC0sdvtQzuTCy/PMGIGM5q9utTaJbu8H6zwLc
	 NSpWkyC+tBgY8SUvxRcqRI+4OhPOJCA+6nleYmbNMruv3kGDEBa/ygIbVAZ1SArzqZ
	 4RUDlPuI87DWgOaLim79ZY4saPhcEFTzqmEC/IgmRaQYCfZ7s7Fer/vzjlugRlC83c
	 +f0a7yuzTJe1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEDACDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169750302869.9297.307413101889990139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63493a0b09ddd670d0e25362232700e9a8d5b3420095c1bafaa4f13b8f241e80
Date: Tue, 17 Oct 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697503028
