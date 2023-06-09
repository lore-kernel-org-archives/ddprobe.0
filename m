Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADF1408C9
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2199C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686343085;
	bh=HnFxYbX6jC9lq6x4YAOGdzOKEYwAeKrnzPXZSW84XXM=;
	h=To:Subject:From:Date:From;
	b=I/ZAR/0/rkzp+63W1P7ZMVZ+FfMc2tfX3PWtqFzt1Z/d0JKDbu6uWmk2dnwUUOHjX
	 o5tKJjQQhdslgMWJabwhTAxoSPgoO9f0hFIKCuaaxvzzXt3kLsAfYat34SmIXe9WHT
	 TmmrsuD7Oww4TtsjSqSQm+2ht2/AQCiGcFrQ6rsEDiCBbQ0RQHo/5nfcJ6I26A5ptG
	 QjsAuMiRWHR0L5feyifl+kB1n8ymialNJe+azHFEokqsDzlEqzimZ7KPi7aRrYyswv
	 jLV0BCWjl40Rc4Dkga9mAN54tQWsaUoVS9VlJaWEJ6GHgcwkEV25S+K25A6CRg4WKM
	 9jENGJUIkngLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C116FC7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 20:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168634308577.435.14120464306282941525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9794d33ba42008352dd01c386c9a17a3b9e4ff22628f2af0e6cec0d81bf9a51e
Date: Fri, 09 Jun 2023 20:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686343085
