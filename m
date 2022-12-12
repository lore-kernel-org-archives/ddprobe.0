Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7651C05
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 817B1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670811687;
	bh=AKXVznGidM4yFkv1OF9AUcaSiiepneIq0E3c0efnQR4=;
	h=To:Subject:From:Date:From;
	b=q6nMoVn6vx+PCqAremKmruiTL5RGy0COKRTeubQF910PJ7L/dLgjgTsRochfIMccH
	 rCF1PG4S6xlECWNQqIIMc48hyTNaYBNrnGdrfxDwCe3ktRFRqGjvXxMorUf9Xhg3iJ
	 EGY15xq+wUtsRfPq2N/ugHKwSShII5meouF6nUuuAOanyvFA3Kz17btbI7Wt7CZeBM
	 48KmLgKX4ifEnBjyzWnGnXrxnzoZPZXDVpYnWmZk01OSWUVcazEixFYmZhNY5bPSuX
	 /8knZiFLhqQFP4/bzrB6LC3ZLWsUIrCicDvFZCMEMw2E+2ZFkn+P66Hr5fS4XwluRF
	 WufoVDMjYfyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F38C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081168739.2107.16841739155992970449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c5e327650e9d29a56e5dedb607d6252e5445774374e6079447ddf105480989
Date: Mon, 12 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670811687
