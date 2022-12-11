Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33E51113
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856FCC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670733687;
	bh=5ShC89zMFj2OWOKnKCxOuLWliWcxnvVYqBtgBOLXJUI=;
	h=To:Subject:From:Date:From;
	b=fQKmTz2c6IPgWvOYoqWunItxUzQ9N9SgMAEZiDCGuu6wadNku4cBZ1Msdv99Fk6/t
	 p/LML7vIHFuh5+QKaslsvgqOujyCLbLhquA1qo5ss2dUAGxaCwJD/1LJNGrvBfWt+U
	 TSxch61kDhy3t2ULh9aBXu8APDeHMCgFtiPQFej+VaExEjqB5hAiiEY0F7YGzOc7rk
	 7H4Vtadk9GWRfjpnGxDggZNAO0LPOqtWwTPm7T3UZ9PofipOJUvAj5n3sugrp6jjDA
	 uxwkTdxO1fU1stghRPspQwlfejf+9JW1UVdZepvZNftZg3jEM38hvIzN3iUSlXEvjE
	 fJNL7sR3YRZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6926CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073368740.23998.16236658225285797551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ccccc1102343531d6147aeb67507d6af87cc7b3a1d77112d308b8803a3a2f8
Date: Sun, 11 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670733687
