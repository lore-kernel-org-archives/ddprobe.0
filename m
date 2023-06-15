Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5673513AD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAE2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686832148;
	bh=noE+sYyIy0NONBrtpPxBLKOSyyyVq4/SKRaJjaBo874=;
	h=To:Subject:From:Date:From;
	b=UYkX9GUUVBe87NHHwNsBTWUx7AOqvLbJWDv87fE2EPv3CcIESeV1BZSpV96bD2bv+
	 pRG2/o1u8roCvKYXWTvQSr6hAd2YREzuesQy9bYOniF3ryhrXv+rxtj78crS2xZDXA
	 BlfdfYZc/t2NBmEe0I6R70IMCAPrfFCdEgLlY+X8LgehkiAKFmN9nW6OXvmGT4rppQ
	 1oXUgB/iNKr7a1dB7O7f7YIMJaZJWl2KYdOhhEg3SZR48rXxTEq0Xobq3RJDv+em3r
	 q9gzTSkcxhYDXslbc5QxWLPlWx2CKKNRcJhtUKvvTWb+bG8ETQk4GYOkPQGQQVs2K1
	 0M6S9e/tqhx7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B5EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683214870.4283.8372258159230276537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6081317fa39bd46cabecd6d877f763be77526cdccf110d5ab3892055a9958260
Date: Thu, 15 Jun 2023 12:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686832148
