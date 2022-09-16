Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFE72F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F5CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663354853;
	bh=QSiHJR4Kp/lbENCjt80KXm53C8RTNEfwSz3kWN/4E3M=;
	h=To:Subject:From:Date:From;
	b=q7q9XpwrGSSQ47d3Y+zFVDXzliN9LsobPJ7pNj33MtLhwF1aZlZOjDv4i0sp5Zw8X
	 y2iq583C1/pG/yRvkX789LEGfmx5l6mASLH8MnnNzlUOZ+FAaPEbvfPX63K4pJsBRI
	 STAdqDbwf9q9k4LAlsT3KbNwp6FMbrPDlvFdYgz2CJS9kPkL8cVGobEL4rw5WPgiDr
	 qW+nUyMP1AaNQjWuBlNNrIp9uKtG2TwOl0W7QYiQ3i2rHSKDtx86qk0DNTh1xUiMZ3
	 pPSw+jnBYKNjWzV2uR1pb+pG81vbeLk8MJmwvQNhq9XbnwtVtBv4nqyhiUyqrG/0Rd
	 /0fV6LWXZ4xDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5D7ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335485337.1351.16525629134466578852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b25f47b87926450a8a534e3c477b30c008367eeea39b349e7a15b577f182e1c
Date: Fri, 16 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663354853
