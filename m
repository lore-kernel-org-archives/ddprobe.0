Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3D7A2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71657C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668299454;
	bh=vidHJ3Wq6fdJe8WyYBn0omMxhKnVBuYg5uBVhA1vJC0=;
	h=To:Subject:From:Date:From;
	b=FVPmfpawdEsgZJ5pekzI26OZjRNUoNGITF6UdS8i6xkBL2xlufM/h2Cdr0s7fdJnt
	 BoI58cgsH0TbRL1vc8VbT9fjDjUFzoIYDfzwlSwwIC/VbhViJUeMrqXI86Q6049p9u
	 t3XytbufSd1J0Yn7kKI2aqj2hvZ9m4LrUqSp++ctSCqDWaW2+VcMTaXyfko4AUhpEr
	 wQIa6omo5DyC7+Yx50IeWxSiAf3i6UKDVe9ZSNevXofXjz76oajAEtVcFQ4vQrDRRi
	 XWeshxwzKKjZaFaV942033BSgNVHRNpJlnbuPjxzv15Lnf6x2Wc6A6nT6nFDJsYcNA
	 getHFIRInTcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5486BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166829945433.8816.9011816585462058303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49822ed1aaffa5d3c7d20372253b0f9e6dd24ae52a9d80bafeea9356a5208989
Date: Sun, 13 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668299454
