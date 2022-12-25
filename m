Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1D52117
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ED7BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672005087;
	bh=l0GIo2RnXSoy8ghk5zeOQDNOvhuCWYh6qVKXKiKtOQA=;
	h=To:Subject:From:Date:From;
	b=WwacHzEstm+XEg6FMKw1dzJI9cT/viNeLl357P6KLM8t42MXDGoCRoRWPD02sQhR9
	 U/x/E+kPiH4bD8iu7RqCDhRkGjcqnvg8yPXf77RCh/CNpOFgv/MuM3UuBecHgJjcma
	 LUEY4nznSLCw0a2n/mGjQfiD4UZSfvTO3JT2BgnYAkhf+T4NEeL27GkidqWSNvNqlG
	 iDRHVv52dVCDk7ZTV2VwrbJMn/n4N46FhK+Jjx6MqGFwa0MxSpWUYcdC2tPWsbLNDW
	 LbNd+cIC/pu1hzQChIq8mdmuosnS3mMOOsIOrLW2ag3lEdOJfdKdYHFWxwahZDo1gN
	 35RwvuxL4wl0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74D29C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200508744.8073.3378530651172604412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb33f90d0f63dc2578c5f19f2b16b6065fe4f15b8d332ff8dc0bab15169afd6
Date: Sun, 25 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672005087
