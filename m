Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CA1A4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 19:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F095EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 19:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676749566;
	bh=1AK7+yvIqciRYRnOc1YCw8qXpZOvRcmU776dXLECeHI=;
	h=To:Subject:From:Date:From;
	b=lF2yXKC1AkPis6+yGx2yG5t6lnPzPse/CKparSpdVVLxiRaZVgaJBQaos+t9tX1hQ
	 aectIElO4uB5h0GS8vYw+Cx2n3mDp4Dy1qtUFWaJFYJ+dKqCEy+J5DLlkttbo6iD0U
	 Pg+eSaveN5JNKuWi62QbgHWkSOUcmN0ZfPCxj70kGQnQ8Ar15FYNmObXe9aQeeL46+
	 wiiyiykaXT5kEZSxkCjxAJ1rB+pC5A/SbksgNTSRrOt+J3rrz/ax/2Y8fj68SGtgey
	 R6+cCSQztvAuqdgNFrCL8x7K18mFo/ZLsNTCn6H06qfrSaB2eD79AS9cFPrYJv0qTg
	 ZfvnfMTHXDYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04F7C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 19:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167674956576.7300.5734910974501080030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f74347e22088d434d1878bcdff0818f18d1ccd4e5d42a38fb2c96807ca1f29
Date: Sat, 18 Feb 2023 19:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676749565
