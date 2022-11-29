Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6A736B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73696C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669718454;
	bh=fZaGwg6iV0C1rvQCVKQxS0+Gc0GhlmbXihpPovk/rwo=;
	h=To:Subject:From:Date:From;
	b=V55INgW1qjBLyrduQ1e1BB0CObADPIGwyaQupdF3e/TIyc9B2JmKnqdzx4eo7SkrC
	 3JeSJ11Wl/wThXjWSUVeQTh7Rye8qajUCwLEZbSd9pcqH4Ipj36VKeROS3sVuRBr1u
	 auvzTb8FMAw4/wfnxKLQVnWp3/iGVhcHSPZxEmYmxYJVP4f1aqY9APbpHqo2Ly22V8
	 nB9j2IoMQCXfJN4YNJd8Ms2qtEyN1iLtAO/rtpeAXo6mJVVxjGtrq9lX5KSBXpDtUF
	 CJh3ODDVEE17HmSOGmafFWvOyIfxdGsmLfezQP+zNp9q3IWXfNBO9WKZb41qbCZU71
	 WEZu4hsonZYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F66C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971845434.7700.17922231475346220821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebef6f295057b8fa2821155eb617b4f47960b5b0b133279a23a9efa7b5aebcbd
Date: Tue, 29 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669718454
