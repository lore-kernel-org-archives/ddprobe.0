Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24EC6AA9
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AAFC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690974128;
	bh=K9A14119MNQA8tyWFrylV04GkrfnR6YtxNNY/HIBVKU=;
	h=To:Subject:From:Date:From;
	b=AMdrxVYqji8B9n0BLaFUi7FcIqcdptbaII/B2SDSmNblqGD+3acXN4O+Ae0fRCOmp
	 I8dOv9zS3TkNve2f+2Sb+9joq6Oipls705kR9G2Ap/8zfhAuC8RWJSl1qwHsYmgLr6
	 vCJjs21ZMribO4HC0366kGhZb7ML6siYcobAf8TJ3TWPwxA++FEcqJ6BZ2KChs4Or3
	 3wurGEL2mu9armekP29hzUTkpgWs1GGrTm0piSruO5eDzjEB0hNR/gv2UG3Lr+XyyL
	 8vX+LnaViwc8ld44hvweQwYzfTD71Piy3h/OFNcuM+wz+IiK8cF6V76MOE58e5rf2n
	 VJ4F8Xe7/Bf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2D4C00528
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169097412870.11664.16163467387000236285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270094068fada6e147c6e570fcfc0ea4681085a3b417c25dce145ba48a1faf24
Date: Wed, 02 Aug 2023 11:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690974128
