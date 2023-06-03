Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53B6EA0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F67C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685776685;
	bh=MsvigpD9E4tPKtxo7vEVeSm8jNRnQ361w5qSDf3AgrQ=;
	h=To:Subject:From:Date:From;
	b=FErRYUOTLKCc8ekgZmVJ4jpjChBkv6/H1T6+6bpfmfjbstWlUQTZ5wIgxcHSfG4mj
	 Wz/oNUzT8M/sdysMWh723lrM+cUg+szhd8V2j0giFJ85dV0UNCxkEicxw7taQ1mY/N
	 U2jNDhPwN298n/G4DN2Z8doSRlp8FoUdEjkV82lCfrEuvAVWV4kIqYNwG73JNYlANN
	 +eGnWqPKk+8S+6E6uQNJ91jgUcsx5eu7m/hYYjpZn70zaK6f8j0X1ujNptPKW+0WIq
	 /K2eb8jTQqYZuYlm9rHaDEwClH0pCSTs/SHiHmIBN6lrEeMm2+u7Z/bPiQ5ECqa0bh
	 AAnqNUipGN7Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF09C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 07:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168577668578.544.1976815012687863560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e5ec2e8afd7e8a930ae6f7abeada6e4f6376d1b00ea74c1c0c941ce4a5847f
Date: Sat, 03 Jun 2023 07:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685776685
