Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C842586
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 09:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOuz+zlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6092C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 09:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697274428;
	bh=CaJjXNeZfvaPVxD0CA0aQCgO2TAS+509mo8iTjWKUTE=;
	h=To:Subject:From:Date:From;
	b=GOuz+zlvoFdCIcUa15uF9YxbZ8UWMxNl6U5w0Moff9f6qHzDzKdyFZ/0nNChgKXQW
	 LvnJVlqvtpShhc8Uy4NvdyWNht24JlWX/rYiVZcO1wAm5VA3fJpglEzD96KufUKHSP
	 bRRYVV1mCxeQIvwPZR3Nn1xG30TpFCT0UIA17ytsp/kpDU58ihvOFLZyFFW0Q0H2f3
	 SAO+iVTODdcpiqzOCQKIzY8be6gWuYMpAYsQSdSoX9Uu4YOBnDXHhWsJNN4pLmzBwZ
	 b648NfeoCJ41eSLL1yzQxNzftw35EIa1gOncQWSwDI3ITGVLlr+601QGzitLLER2kS
	 ux5or3PVFaZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA390CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 09:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169727442869.29953.7365668704820000309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf9015b19e517eec214b4545905b39ced9379dbacea6faf3234d236780fec0b
Date: Sat, 14 Oct 2023 09:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697274428
