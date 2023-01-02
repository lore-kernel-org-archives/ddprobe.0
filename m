Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DA628EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8A1C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672659087;
	bh=Xm/GYm6/XjVAspHUQwNBYzF6QJyykYKlPfE1rsDpVv8=;
	h=To:Subject:From:Date:From;
	b=Z17Qhi8VN1pbSVQNNIDA99Hh8KZVv7CtFs421UVabgSs7q7wEe/ocDOH3KsUXNQn3
	 bKi1xl/vYdJLyTFpiCLOcBLqKQOIG9a8uGjBMMY6Qs/f1DkcwOZ9l4d5Q2RPZ5bNFF
	 33q+GtwG8JS973sBI5A+7Ufcj41qo/wAhSMMIayAOAa8Lctzo7ES9pKr4otlDShULT
	 59Az1pii8Rjxh3v0MeWIFguRq2rtchsXEKA43R1swtlou97uyF9HOnnDyg3bq0kUNB
	 0uGtZO0IWxarYrmrYot4X7K9El4T9MD5LThPkJofk3bEGtJrjgu8cT0IRwCaJBrHEn
	 7tEvNwOEO0jSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649B1C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265908740.1849.6975845001774917996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb71fd6a3911a1d316b59ca41a3ec219666f143be6f304df2aad934b918dc6e2
Date: Mon, 02 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672659087
