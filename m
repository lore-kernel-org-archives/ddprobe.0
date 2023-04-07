Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2CB110E
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 07:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D770AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680853085;
	bh=c9rUi+y2VziI9jnNTe/qXFr1GnGIDy96mBkOZldBntA=;
	h=To:Subject:From:Date:From;
	b=Is1IlG1qlGwkK0Iadt5MKlqjn9qr5OUM1ZqUUFAFM+riYU6e/HnaKsKgWwadxgB1/
	 Oizxc/Aakw/NtNxKxSLik4leGNkCtWl5/icpLOm42JCeCbc/U4Z0N5SwH4EaB2NzFu
	 fo4DUg5e7TlCEez1kZ3nzo3ySf09qMR5HGWXuH0b0yyfKPdKId78lVh91SSkmPGfjx
	 dJ+YDjGwqJaFQNIFg50hjnanVSinl0sarA9podkvymTi6S5cwWLHPow6RtzCibWlVg
	 2eqA65Izp88K/WyimGEYrc8qJwOI+oRcngs4YDIlrFFdiXcvPSGfSFql8L9DMrbUwl
	 Utbt6l/nI3D3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB93BC76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 07:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085308575.7694.5659482297236319566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3749086ec7603d56b7901db0e835d71ee35209963def4598f19fe32966093c
Date: Fri, 07 Apr 2023 07:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680853085
