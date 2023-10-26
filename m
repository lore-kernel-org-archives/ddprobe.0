Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6F4163
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvghinH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6E4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698278896;
	bh=ykBrBuiYXxpmWntJBq25698A26GuuC7zVF5y+W7smHg=;
	h=To:Subject:From:Date:From;
	b=fvghinH6cMnLelxJYDlCMbTPTs5YdPyh6D/0EZRqlq+iXiED2sd8SL85J05Ewjwzo
	 Ua7lXP0mzP+cJMOX3TuGSSL200q1HocKZE07PBv13hWaA2imUzwzYY5AVSng4ewKcA
	 p1RGSc+9nfKdVH2JUNZN+e90jCOnv5WiN35FfjXqFJ6ceOuPGPSANElo2p/bfatFrM
	 eqVcWzBuHEVvnOgDhFFBciAB/1kSI+rCvu6U8KVPlUfOjJn0EOkc2mXNWJsz/3m/tW
	 eKbB+OPzaNOwJYUABDHsvumHf/FVQhIf10Y1cf4UBoxzoWDp24VtGg8dtY73cLlevd
	 jdTxPwxx9gR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EBBC0032E
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169827889640.16304.5959888136751545901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12a8f013a310a5871ffc3ceda91ea776d8a2e8de82158542681a17a198ef60c
Date: Thu, 26 Oct 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698278896
