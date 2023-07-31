Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498FD19BC8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 16:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CAAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690822328;
	bh=7HEgDKuc93b6LHfh9njqpn3kOcy2z2ebeDW4gnnipPA=;
	h=To:Subject:From:Date:From;
	b=Hic/y0dDRefGLg/7Px9E7zLMDJ5EYbsxooNFli2qCTn6BF/3PzjZil+UjkL3PaX2h
	 NVXYD1xpU8Jc0NUUj47WzP6w+Z/Vn4YmYRMqsSlU7HAEP8VyZS5V+Z8v4FlMW632vH
	 oUhjybjDnLTvoL7dcUiTxB7Z4u/4qzk5fdOFcS/FTfuX1fmAIo1IFZYrdt2zvUJ9Ll
	 owUpBTG3UWrbSU+hSRRqpgL3zuByfMCPJtfa0WaHIr2hJ9Ja5LWcxupa54I9WwoLuX
	 txxLDxqlMWUh/PrBVXKUxjFWI/UDBIyIy61iqH9nBNA3oxBspHLTRLLad2NKpPn2Fh
	 1J0pHrQ2FngKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB2C001DC
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 16:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169082232870.12606.70595088678815221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265a786405c9dddaabbe441b6848decdea44841802348543f449b4de8fd459a1
Date: Mon, 31 Jul 2023 16:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690822328
