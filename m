Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA71C84CB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779583354; cv=none; b=IF8lVVaR1kWmhb/FjZ3RNZKOcIDt53uPYzrg8BRVrb1sTS9u3rE+woM6oOT+AkmOBhTXU8O3pHdYqgc1oUO5F9iWRSdsayG9z+tMR6LOCngDO9IZiUUjFUEfZtxWV73AwIWUhw7TE6onRaQ7ydK/L07dfW01EllQ1pLj1sl872A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779583354; c=relaxed/simple;
	bh=UbtoxTmdtfmdXB2Vcmj6/2euk2amrCq14kbZCEZcEXI=;
	h=To:Subject:From:Message-Id:Date; b=XG4E7DTtl68Ouju+EyZqNkiooa9XaiFchSbESf6ej1iri7BNYjImB2WlUdvlpsQk2XOHIoBYMYOV8Miud7z+0SlLdjOIkVhTIRFGUD4nj14LzhBfD0TPnrJnXcHwh4h4Udu4CbMiSdAR/pa8cGOb5sQ9i5exjUIDcnbfPtfwAME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXlx1F5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXlx1F5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A22C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779583353;
	bh=UbtoxTmdtfmdXB2Vcmj6/2euk2amrCq14kbZCEZcEXI=;
	h=To:Subject:From:Date:From;
	b=CXlx1F5okJFXm7333mIEPKRtWKyxwnWmq8+OoJ4um2q+2pVT6VLCzFkdISHZMZUOt
	 nuMDUBKCcs1JafISXJb5d0gFrzyY7ifICYPVlgrlAZGAPOkL4IxVHo9dC/r6NZO9TB
	 P2vMgo/NNvjHFbBKQqTzq0PBhWTqaTJw+nzczc6z+Nphc/MQwpzjaVBdLDbAuDRoxw
	 00EL8ORI/8LVUqAMQXOTtFJeAraKtTjgq5qOx8tOCUWZCUobM/vxCh2Uoyasd0QmuC
	 +LQXwP3t5cEzys2accadHfC4glnP6BOQo6AjYyUUwhN/sNtv2YM9JBvfoRRnCq86jz
	 vnW5008Qej5WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B0CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958335368.5400.13672214627196201365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e574520045abab87868b0c3eceeb5f8fbfc92125d66317b31637ac46740d477
Date: Sun, 24 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779583353
