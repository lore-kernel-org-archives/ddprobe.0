Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5438CAFED
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01B46C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681848666;
	bh=iMxgbE9x/Ks83NcKv4dOcQiOm0Xo2U2Oz+mLVLm7RkU=;
	h=To:Subject:From:Date:From;
	b=oE783MHelWmnUBBN88tuH3yldmsrTnyLgG8CCW0d//0dB4SM4uXlDQMG7Ao3CTd8o
	 fYqiVpxJjT6axXczlnGfUmIQxcz/n1m91SjFK4v0h+8pJLf+JaZCqw7rC1AxzVHEIi
	 XxilxooR23hVw3PfIuRuDuxyeb4YcXCeFb6IpmFDx0rB9BJUlHbnYCSkx1L1vrkQYg
	 9nZCxw2Wvvn7QhVXkPlnHrE8l+tUsbSCy+F9qOmcKdOOn1RuAUhr/kmxdW4ApA+AhF
	 Hc/0ib1H+c6ReSSGDLdT/crF/npR/5qOOF2kaOQh38HbwACpqOM/LnsXhkeNwEzR+i
	 mEErsuj1XWOLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53A9C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 20:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168184866586.27206.17407684375351721549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76937da6568950e8926ad75d78705b3b876500a9a026f43f87f94282801472f1
Date: Tue, 18 Apr 2023 20:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681848665
