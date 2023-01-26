Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437DA1101
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8400C433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674700985;
	bh=v36yF3K2SKfzvdPkj5keRC11iodglRgupLEo7Jo53LU=;
	h=To:Subject:From:Date:From;
	b=IQI+xtGCjSfriicQ/eNVluqevkOqsu87l57HzZkFOAH4RyFz35doagIV5pKmOVWDc
	 Zvl86TLTLzpRSkeAOlVBAQQblNf3QyJHBZ3W17lzVNGUXOMeLpIPzzB7FW3sZLYRi6
	 6b9oKEM8NHEI9Qhp82Xm6WYbMdpWqR85qCTWjJmFSJGrWmzAj4zKBqeRpH+RmusR90
	 JOHPafrIAXLEYT5gdordunKMKC52gfnQmtt3fLEj48lwHj4Inl8TbdZvbQDFwmtzjR
	 kGqfkX+l6ua6lebPoAvXaPMVGOMeQ5qqSh3VbTneuM5LAtiw9Oc3r+qt+BjpbEnXDe
	 SGIa/X7IoBBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87D0C54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 02:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167470098574.14704.1791925494690727653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901c774376c50621975ac0624ff43af82f752c57451851eb31bf2bb4a3091790
Date: Thu, 26 Jan 2023 02:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674700985
