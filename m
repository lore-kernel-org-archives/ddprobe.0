Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA5F63A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0ABC433D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663409453;
	bh=+Mm3i4k+w8TfoylebfAy6HnQDaLyKtbQIRxAI7zzrKY=;
	h=To:Subject:From:Date:From;
	b=kVBR3MKKNiPBah5m/4LW1CuqMDY7v4ScANCBQYOS/5uXzhVVk781Q+c6i7rMFH0sg
	 Da/NCojTPO4zbxjw0g4rIFiDTkWtXvdTdGshZ/jbrtH/WZNKchMRV0CS4DrLVvmyEy
	 3Nsl7R9XHkBai/8v4HvYbDtZu5aYLBjstS88tqOIenTfrQ58bXnrQ1gBKYjkgHzd6S
	 2BWkePL3//j9VdF1gphDY9TyJaM6gDwDFgrcTZ3gbHnBpiy2UvDjjMdUO0h/bcm38B
	 lNMGVlMZxo457isw8ol6o5tXesRIEHc0Sh0dc63aCbQje7UBJIm7sB1Vzq/WkkOc7E
	 z9X37YMG9I22w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A98ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340945332.17062.4522047970796216335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c4af02755735141e4b9a25a6491ab1872bf3573579e70426f08316b695b3b8
Date: Sat, 17 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663409453
