Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB95DAD23
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2B7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666891254;
	bh=1zOhXjiu6l6UZCekFJi8N/HjSDhX5Dr0swAhJ4fSjAw=;
	h=To:Subject:From:Date:From;
	b=XxnYVjklmQfd1i+ITCgt95jjpfIGHJZZkKVRAd/HjjHelLkLAC+gxso8w5dlTyehd
	 M+0wHM2L4eX+y03dUJNcmLoLxIyFqF52/624zBnWdbFAD6WzlGacSkFLfRkvDLeutc
	 iHrPhEi1pksiX50vSrHfBLFdyUUSoNyr4kxMFaleNxUTNgg7JrBy3SHC8R57iCytwe
	 H2F57Fp2RxH0Z5g2aj/Xmj9DLVylcqvwv6KZcZel0VoDt/vDulPlOvzWp+FcvLoLIO
	 hv4wjCN6GtYt6g196caqUiVfeCWL+2JO8Nm4UAnhyv2ylTDukjeynuBhr5cIEoumiY
	 tK096QsmejOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F631ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689125431.22092.16544683708502328685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ccd33c0eab7a667da2520cc82469682c9fa11bd93de62d29e71492005fc32d
Date: Thu, 27 Oct 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666891254
