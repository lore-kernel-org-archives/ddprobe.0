Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB92224C4
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 20:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWq50AWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19A7C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 20:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696452968;
	bh=55CIlw02SpsvSuQVhyTpwkacDv8Bs458TuIbv3l3GW8=;
	h=To:Subject:From:Date:From;
	b=CWq50AWixHmduaX/XiD9Dxgrqf8N8udrBh661u5+IirEzBzRRJsOxiXCvtX0Wcmxv
	 9SPoSx/12k6NL7LRJFquolPgfuqAB6xX26xuRdqFjrMQitdfrt3hZ/aTSeraG4w4DC
	 Im3T4nMXLsEDuRTkGpw/bDE3gQNaEOy5q0jGSdEi7LCg2LC9KqSZ4nRVVsd7Fr0woP
	 ApPogkxJwG6+Khlmk2mBGWM7rtNWRMfHGy9J6rqBKIBpD48VIx0JzPmjTT8akWekL6
	 pLHlbnCyD2xlVQQwFjK2nuCF7TGomfnOIjuBVIeqfUHDO354QUmcjVl5pThhlG8Hlt
	 Lt9JmDsNSKRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BBBE936E6
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 20:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169645296871.28287.16380129375865095185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9adbd4876a4862510e41bcd9b341283325f68d20c5ea766cf8c39a44aa1ebc
Date: Wed, 04 Oct 2023 20:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696452968
