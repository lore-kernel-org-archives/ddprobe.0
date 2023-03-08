Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531368BED
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE905C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678300866;
	bh=NlGzIOyH9X+oBQg6BDydI8Z90hbTBC4mgPvpw5NPTnM=;
	h=To:Subject:From:Date:From;
	b=Jq6RBrCfOgvt0xeQUHLYhd6pqsC2yaGJvhDBola/mZdq0Nqgyg5RcbYIcX2w68Vfv
	 2xOZae4iBPEFtHreKlzoPWecASjmfnjX4lV6qnqeq20ZIFqTm1bXY5AUtExEkWJpBD
	 qJF5t71RoK2GXm4bPeDLO9IJdyQ97kQEdh5SH5WqYrWOEdpG8hSF7CZLZw+05Dfshi
	 cIJ/uv1lOtQeeKxAZtecrhDsArmGlft6MiAXbPK9adTe/Eo3eYqrM36PxSkOqyJgVM
	 Nf9x8KXXN1GWYAjzysEbFP+/FDuGFqQMN6ohtHiD2iRtJjx/OiZNJXmXeKIwgaNzTo
	 5JNWIGml2c1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2CBDC678D5
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167830086585.14806.2296434807584182975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88a12a08ff5ca6df8419d4181b77058a4d0893b604c335e3d8f9f119f45b091
Date: Wed, 08 Mar 2023 18:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678300865
