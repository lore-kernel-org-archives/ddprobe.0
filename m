Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48B07B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 924CDC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672036287;
	bh=1odfqFA8FWTLTep8RWMwfZjNLQWo/3Ewc6Mh9jo+SPI=;
	h=To:Subject:From:Date:From;
	b=EsjmSiUsk+ABjlV5kebNMtcem3ro0VYRm6moN/x4C7jrmb48A+/fPFjUn+xFaejBq
	 +6N5ypcu500Wjo7dlCOebj2zbjlPu5gcnydTGQq+7OZ3jCgv0NVUVIhhnFrKYOnNZf
	 ItXT/V73t1PbHL+hpcOOuZD/DkM/ZOP0ulx2fHPc99fWs96x6R2wPmpOmMrTl1Ikn9
	 +/tIfQRpBZMQ8uxwV/6Wq0okTvWHlaLEF3Oq52PXM2yUNj6hbJnfsC3YY4NQLZ9QdM
	 DE9SGLZo0LJS//egE4VBjrX0yZt5SdGaP65q0dKTqR3oFCYx6a3c4irJA74Gd+P2sq
	 8OSbRE+1PVyHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75727C46467
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203628746.15657.4878463950977371786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafc8f9c423629e1674305139451f2f2d8101542e6ce36cb225370e46b286937
Date: Mon, 26 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672036287
