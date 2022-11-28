Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA588F51
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BB2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669650054;
	bh=peDnGY4dPGYSVe5HL2IUBMkK2/iyMOWXahpozCwiCvs=;
	h=To:Subject:From:Date:From;
	b=u56avpRvwdNJ88ra/f6wmJA2cW7Fismp/u0/u2zsafUGGh/wWGWyWOcJD+XDPv0ow
	 hjCaT1PXjDjwkrdtahvbYQofNLoc6kDIcJO8WnxuS7ncAStoLXB3H8+gtw0QlmMu4t
	 ApXKcra6fFM0YR0J4Gqq4o48HIhFEA0RaGbvKWtpXD5lMN7YPQ0ZSletOqqwTfUZob
	 w8eN95p8rb/6v7WY7UGoQycFTdS2GFOODFJjK77fv1Wd3qnNdJvXTyERfoAuqPnA7m
	 ck9kDQ2Wth1Ul/54/exa6HVGGfy03uOulsY0JPiYWQreu9grzYdo4RcUYKf5OR1Rdo
	 kBNZTfptQP2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5696DC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965005433.22915.924343151440468394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251d0b1c5022ec43e3e51da255dffc8318431d1f2a3e780cc3b4dd1f0c126bba
Date: Mon, 28 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669650054
