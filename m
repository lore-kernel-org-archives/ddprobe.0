Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CD037C8C
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 21:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea9Ij0OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF57DC433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696886228;
	bh=aryaSsMAjjVKZfszCTzE9FDj9Lzooz+ME+InUyYsnlY=;
	h=To:Subject:From:Date:From;
	b=Ea9Ij0OI/BuvJ6LQRbNLOB4kmnTf08Z9gian/6saynvXGlaDczBYza8gaLxU+U1cj
	 sfbmtBszD09SqpfafzZxBj+6Ofk/sHIuukKk56C2HrdftwljwiJ50vz9ZQ67O6L9Br
	 M2++P6G7e46uyveOOV5g2ZWs5j5wN0F7zkoaPIGDB3UXzFec0PdTZGQ0bMIPmAxCyD
	 CRoc4eEs7TUfmsCwY7Zm1iYin5C7UGllmnbfzePVD/eF3yQ/5oYkEoEFxmWtV/Ir2p
	 NAyKTL7G1kBSor4KmFABezMRaLNGlELLflNlmL8YpFmWd2bxYzv0keLcs+iAEVoerg
	 IWwfF5eCGqF3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6146CD6137
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169688622867.25697.17195748762296294204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d746f5670c949af23a8cce5ec3af95114d08e0015c26fa9b0726af6febc5c645
Date: Mon, 09 Oct 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696886228
