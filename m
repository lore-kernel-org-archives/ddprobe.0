Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29812770E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A317EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673026887;
	bh=6rzfBn8mSOsVfsDgtGEjuo0OWJ2oq9jW+HEvsLSBPJA=;
	h=To:Subject:From:Date:From;
	b=CPKPDqITtG3G3+OpiBEEh5bvmavgPfkfn5I4Z/hlH3inNpFuYIAqkSFNDWncqdJcZ
	 1C4PXDRpfAMuqL/MIIEjv8MxC3mTSVGh171rZ24mC4CnzBfYdrTnVrE/1rrlqqeQy/
	 x1aR/LYwcErN/4R1Qr/seJ+53JHJy/UowwiWoKwHwpZECtwIK2D9UHOo21+xjIY3xv
	 6v/sgV6U8L+kELZGimyHmEjbA2gpRimj34OvEospOnwWNAdMjoKOLU4eCCth2ti6r8
	 kz136fsNEPXg8Q948mGtefZe/GoQ6K4EMYWRV6VHQMLu9GRtB/WCqkQ/6EKjcCq6oJ
	 V4FkIHfzLwVKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82719C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302688752.17098.4667670861761525517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e7ad639db72fd48eba7dcef82c97dee2028020be8c01eef31a06d54a237a99
Date: Fri, 06 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673026887
