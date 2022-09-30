Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5541363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703FBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664503253;
	bh=/vCzvfqU467wgGMZpFz3U3okODigVVpK0CmnGTSod64=;
	h=To:Subject:From:Date:From;
	b=QoEOvxKLHG8MzPvcSzHOhs7wa7D1AdSsy4Tze3T+H7iRRgTPfDvjH15gEEXFnhKVB
	 Ng1aXnNrw2rHQBMpz6lG9oHKrXjCAkNOAc3NcM8rJV0BlxoXMcyBMrvaxYJtAcFRwo
	 0f2zAhbpiLuGqIdh8bMjGhIHb2crKBB2/mlClyPJVj8Gh6La72fuBMnCrtYuSxPt2R
	 I5IewXfpQcmjuFDPh/8RNnH51GUq/yJSjD5bbO7YXFqBYBrkFYue+HlD03XaMf6LTL
	 iW+NhrCGpgMfK2bstLnRU0IJwybEB1eAVMX+cGFSPyMxyKdchAJenIr1SFmKTCvTiH
	 gidkzjYJ04o8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FFEC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450325333.459.11398498234485079558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd9cb591a5049694e514877a0e04ba36012e49b5aacd0dcd09a1beae822802e
Date: Fri, 30 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664503253
