Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E2315A9
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D33C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673238687;
	bh=ooYW5nt9BhlCyyjLAhGz4upAH1HWoKE5sUs+tlMHppo=;
	h=To:Subject:From:Date:From;
	b=Y/hBuredmUyHniaQfT1AzFCf+8DRCZdGNHqoQHdWil+osL9sqNRqOQQ7xAtuMIbiB
	 QPQEE4mQSLNwjXHdxrSLiDdFIsu1SGYC53jFLuKLCHpDMRVW7HzDbihCpPUIePEMl+
	 TgF0I+t3/SctrFW4t2aqhg6DG9eOi6WjIKnNLfLMbvASwuzAwKWduW1eC6LcJOaMqh
	 D4b/+uM4Bv9+tOI7itgQVxv2aGoJhyIJqvmci60tpLUf0Zm5xFOthJopkNjMtaIFGr
	 Gx//1bAsiGyRjn1VJ2CPAwiK0OGmLZfoBRvVDPs9FvyebJcuH4i8Nu2TJy8rif7MwL
	 WzIN0YPkL/MJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60543C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167323868738.16651.2392478684348818903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abf66dd08b479e90a7177e31dd66b452845e92b9d6fc7f2cf5c7aad8bb411bc
Date: Mon, 09 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673238687
