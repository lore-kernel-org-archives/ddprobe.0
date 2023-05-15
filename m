Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372641FBE
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2F7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684185005;
	bh=WaTjG/hIkN66fXl9nfFh3iXeJiUrCRtc5bXD20uu8j8=;
	h=To:Subject:From:Date:From;
	b=IrvkCvdafi4EK5TjkueIIhzUPyR6BU8odg7aT8BgbCBvudWowhcLh8qRhCZHnugWF
	 Bkm7Jd/tiAPvGofVqfkjlx/lO56qegN8EZlGrhKB24Q6iGAxMQuXOo0WwJnZmcuDog
	 ufLnX97MUOzUrx2t3x3AGrMhH8jv354wrgsV9npT1FikzwC+l5f8zVvjMCswZ7/qyP
	 Rk7NBr15LLsTiEdrgGVC6nmHEA5bKNwp/G+F1P3Nz9CyUWQxfy+QnfDR5UFXTBfclS
	 0dTZZ7QgDznIb731yVtY1cBPLTQInFWE7xEBVeWn9ZUaC8IEDEkP26kfc+/y0m7TkH
	 4o5JmdqOQp7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC126C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168418500576.16197.8998408326400410201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66c5a298c03def1f9bd164be63f3e1c7bce55a2696fbdcb824614f45d4fa88b
Date: Mon, 15 May 2023 21:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684185005
