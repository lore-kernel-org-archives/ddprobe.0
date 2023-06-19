Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D396290E
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 07:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BE6C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 07:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687160408;
	bh=/+mZqaRD0Ori56sNhI2RPgiFCioflZcQCr3kklgvYLI=;
	h=To:Subject:From:Date:From;
	b=VpWEovpGhnUTB14Ul29w0oXgpl/2kSdkhDsrsUkUaVBVvFn1yPiIqksCQiickDPCC
	 mYTSQqCxDbCiVhGzgosmVBwoZoYw9FfWniFyJtI+ulOJrBcw1ufSIhgyd1Oo3QZrFG
	 RLsqIJ8imBwbZ0Ki0gG4P5f7e/a19nFlTX00513rbIXWUpexVzyTkVef0Ad7HPodTP
	 FKrPEh214pxOIUABlSRWyPJIk4265Ds02wJKehHpCFzNvjSRrle0WWQh1xaRuW1d5f
	 +GlonNqgmJvksTHwUojWJn0WI0P4aqddAClkmScPPy7Khe/FC/TDccePPWlAozq8dY
	 Uxpjt3L/E9I/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA979EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 07:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168716040875.29053.3175968136669618598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0d9d0eb308830c80f067f2bb873bf3e886de8e0f2b7e6e578b136953d90ee8
Date: Mon, 19 Jun 2023 07:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687160408
