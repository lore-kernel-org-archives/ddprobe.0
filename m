Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B1D7F4
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1856C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687034408;
	bh=ZXCn9JfvNMOQ2yn3fEHyZBfJXJDJgRpbQgX9C83dwHA=;
	h=To:Subject:From:Date:From;
	b=UpDXK2ME5nne3gKpViZFBtFzq+jeFe99/BiGy0ouupOcAy2Hj+YCyUGZW3ntZgD7F
	 S+0Rjg+oO4qaPFizGVSLzxVSe/wYb7impYW5OoIh19lTGSBOC4hKo0rl9+r2XGN5Ij
	 dTL1OYQXtucXjECywV0gQ7JRHKWx4I/YBfJGwC9ITzbA1AAQ4VyyXhRIF4CbHEbCY3
	 B+ln1tV2vAPygL+Za0OztC/xy0gXuMeqKPm9Zf3xHBk+MKIptkNnpf8jAeKR/TQQFc
	 bbVp36rApSbV29QPIqGDF6pntnq/F7ZU+2xfS9gRxB+31P6GLoKQyoEtxrdRqG1Fpd
	 KhhdQ7lh/HT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E8EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168703440868.23511.1879382430449918894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853fd89448917d65bdf2c5c2db2e5d0c423ad526f618301992cfc89388a44975
Date: Sat, 17 Jun 2023 20:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687034408
