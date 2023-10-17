Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFAE15DA
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beEQtEW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5B1C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697505428;
	bh=RVeApj5wP/qOaWpVcYI56ch53E/d7efDYKdROtfVh6M=;
	h=To:Subject:From:Date:From;
	b=beEQtEW0KJ6ec5ptkApcLh8OtpLJW1ul8AskMapqYYcZJvxVpQb2AvcO52iOxYLPY
	 C3OipNeufC085BRqWFG60jX/VDFBw44vIVPUZA9FPiQjmYUw3Oqvl/i6maJ0C2KSoj
	 ji1oI0lEc+rzVJQhRf6qiCoCb3YgWTcn0GITEH/7I+xifCN0Esx7c2IeAW2A63VkS0
	 aez04T2Z7YI6w3VgaB+m0ODpixar3ggEMnPJ1HDfIfTLGg6G0P7xxrZZXMmvzCXF6q
	 cchYUMXkqeUoddWXNnBpuIcillTxg7Sw3nMNPKWxUBpqTIRo7hafandsy4LiyrSgC5
	 aEvYXkjWvgDZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE777CDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169750542870.21431.8794203653378264481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fdf78e17173c930a06ca99a35b452cb34f2b1e51f554cd53c875c7cff597db
Date: Tue, 17 Oct 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697505428
