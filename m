Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C614C8F5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67790C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665560453;
	bh=0Txn6P1YNXF6ID76rOFpd+ChrIjkvZY3dTaptowX4rQ=;
	h=To:Subject:From:Date:From;
	b=ajawoLqaEoL75BuYlQQ0MpDskLa17ukz2pLVmVg+xPpGwal26BU691GiRMchLSlJL
	 FiVQKygF8QYzUuMZu29sPhcPkJjNnofFfVSb6yrXU7oHxEo3Nh0iW4DmpIcec9E7E3
	 s9v1UvS0cndIF3rw1PEyng8D/p0v1gySPTEegJ3Rf+fag3RfVWAFoUe+wxO/YD5Yel
	 XgR2QOoKZM+INxbbGSmv6nG/0ucWIqPaHHkbmwq/uXhyx8MQAgjKBrU6ii/i+V7UD3
	 YQlYdqKFzLl2mp4QvzVATjfKOmj462ZqJ78xFf2FPDRCfi1SCYetDBE5+1qmaHfTSk
	 jV9ZgGMjBOv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9EBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556045331.23262.3388977707270736759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff26d62a0a12a255bb69d6f95f277b456bf0d3ee1628b3e37a96bc440e33ecc
Date: Wed, 12 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665560453
