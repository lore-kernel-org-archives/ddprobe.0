Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A72C7E
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 01:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00B3C4339B
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 01:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683076625;
	bh=EJSLf7cIHjWkHjDD+n0i09GWFJTzJpJ07jCKLoMaPM8=;
	h=To:Subject:From:Date:From;
	b=ifuZ9iXJzsH1z65g5vwsBw5BShAAb+EYz8h/KjhmE00VsNmVXnzKA9tHd+IE/lZkg
	 Rde5Mlepfuh/lG/R9i00AzJkEOKelR9VSxy9Edqj/pVYjbZlti8uInvY61Irby2Vqd
	 R2flFZFvNzZ7A2alHni46IB0/yUCVc1weQj55JxtLthkJwFLUnDgT5oh0qgPnjbCiO
	 haRcFrdyibZ9g9cflwtCLHwpBtOzamt/aEmOAucmm08IUQazgrTUICXBel807k2/i1
	 uQfJJOp7R45ED0l7dOHURXBvhK1ztFEV1n8qBpxZp1hBm7hJ5xuqKGtwnESNHOqC72
	 2nTc7oqqI98AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4271C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 01:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168307662576.26531.14675966322430225019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82fe6be0e33ccba35aa5b42a9773ac2dc5e7de64a0370a99002c45f55a72fb9
Date: Wed, 03 May 2023 01:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683076625
