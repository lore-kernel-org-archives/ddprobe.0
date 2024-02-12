Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022FD481B4
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707769697; cv=none; b=EvJySWDMwA15BbnbeIPS4FO+oHSiWpY0BgRxiLTK0lvvH6CqWH5BVBZOwXb5R4fRLbZHhPbTa4Xrsw8HQ6nURhLJ9EUkhVuPQocBc4UcZwWM1ES9XDEUriPQ1bZbE1s73sO6/aBGAQZYbbRivIexij666VjjUpAj4hoF2+whmGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707769697; c=relaxed/simple;
	bh=MwMHHarJr+XEeel+3bc+/dcKjhNvnX1Bt+w7QdJr6dE=;
	h=To:Subject:From:Message-Id:Date; b=C2xGIP26XUY8VQCSt5lBRFYqSycaZ/13GcYUIC0KRtGcVZ3zVcdNvOEg+Vbhv2oAMMsBBj2t0x8Pnf7554Hj3HVS85vsVwHLMNiR2h0/DbDUxwJC6vIY7cxq2hdUyPsyjt10nm6Iua71UFuMeLOP6Qvz0rTDBZSZ+FEUwJBoZJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4LEDSri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4LEDSri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76799C433C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707769696;
	bh=MwMHHarJr+XEeel+3bc+/dcKjhNvnX1Bt+w7QdJr6dE=;
	h=To:Subject:From:Date:From;
	b=G4LEDSriDBPDF4msYIkL5GMzmvAZYOgaUSMqxT8EF33PUhwM+68NQtj6hnuSKuzo1
	 WIfGIt45iJ2tY23g2JENM6I1r/mcmJtHoSLA+yH4MfstOePdjLvE9m6NX3Br7WGugv
	 m1KemFVx+NqZalWnPT9Bhcj9lnRBbKPhh9Zyr/feUlX2V15eBFbYwpubNWoaHRD8eV
	 l4QYUnwgjeGiLuV76V0+uqSaS6dx1mwgWpOPjVjOOld0bBugRZ4K6rY0InbB7/WU54
	 5nhsQH7K+ngsYomnoxX72DnrF11qeC6y+pA3TiAIMG7zuoRpyaqcXhd7Ht6OtKxCtE
	 h+GOej4v/9xAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3F8C4829E
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170776969637.11821.621942121731783217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c928df4c8e5b5f201d8121a155f2736153ccbdf1221658202e9620ca2f0b9dea
Date: Mon, 12 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707769696
