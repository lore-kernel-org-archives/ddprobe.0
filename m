Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E95B79C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0EDC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 20:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679949786;
	bh=ZCQGBPy+qEKzpEp32XWQ0s2P8HmdZbcXHRiIZDTg7/4=;
	h=To:Subject:From:Date:From;
	b=SDpOuore2Je9lOx5dHrrAyRd28OdnmO7EYjn5tXG2PvTMbKX4J9DyX7qxcfTAulIF
	 B5wd0PHT8PoAIQVZA5kDUmZjq+XEQzF26iA5MGxHQqmW54UBGp/eM522wOaWxZlHlH
	 O7sbh5pcaLqPuovFs4mzf+KmjOMfrnBvb2MVxsuE/41kBdHMYr2z3AQ7wZeSTAFVuQ
	 YeMNFvz/cAZtsHjG3+Y0IsDNK5sT3yRwUxm9HOblMWGlsexko22q1izhycss2JZJ73
	 2kW0ffCNnRhVIx7G/51qf23mlJ6hb7NlALi5kzZHs/qeowGEkGsVWXya5tAz5HVXEx
	 hZFj0KzVxBiYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C207BC76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167994978577.3719.17118843946840760746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c721de050a1f6b1f3dd431bdcbe9f9b65c4fe8ad5221d82e0fca52979bc6af2b
Date: Mon, 27 Mar 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679949785
