Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7976F6AD7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA1FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687637588;
	bh=Td2T1E+1l6bNzaVYq+myREUCsDKibw34Kq3Ti9dsrSs=;
	h=To:Subject:From:Date:From;
	b=hyJOkVT4tLPpCMpAUtxvtR0LF8+8P/1DUDtObpfP/+v50fvPC34YMGxuEhz4gWv0T
	 sNOmRBCI3KoO/j4xFJUSrGFzli7ZXKkEoQwbPhzR6VMJEZ7jK4AtzvHt+HV73FegDq
	 sblKziXUUURRGuBhrAHnRLe9XVnsTsDUx9YUWF4TtY4DHZoNAMLwHbqYfjJgLEch3R
	 +DYS9Ld6v0fGtdLyNJBOozEZBCxWiePOsrVz5y88zvFlusVrsYYX9bt3DoBx7rgWqU
	 y+x3n6tdiD7TdY6qbAHHvTtEZZvKVlpboyW6v2wrTxDFNHcXxBoQtbTqAwIJLjqap2
	 Hv16jv01lzm3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC156EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763758873.4657.13817840412409904749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8761cd1a5adf6c804c2cf6ef911574dc5ccb1a90859417a3eb1b2ca562ad9486
Date: Sat, 24 Jun 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687637588
