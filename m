Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C5411199
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 09:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8612C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 09:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694855708;
	bh=/0E+eXpsNxzqg18XrCbZ6eWGP8u5KhpxgRkJmSRMh1A=;
	h=To:Subject:From:Date:From;
	b=dguD6VG8UGU0SA9RUYRfymXOhqw1gWrdaCs3kM37Vf99Wo3E23U6J/BTWR0jFQz5r
	 RWwVpq6xzFAIfReD9WbG+on94cUQi3gVAlCFjBmEKWiAjks6aQUT7hINFdVuhAM673
	 8VEf86q+UtUZDFSL5PZtF2j8krki1qMyHolQqVQ+jinBVzddg/Qvg3zgR9nqNLZDUu
	 Y8DU/60CdoS6dRFyTW5sovfr3xMGm/7bH83eCpxpujL+cYTkZdBhmhMDtIzMT/c3zW
	 AhXfcXsxtPcBHv7fEmzN2aZCfiRBnKpP1CiH42/S13REdqDCbtGnpbr0Oke6regSrf
	 CNTljnVOSotMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1F6CD37BB
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 09:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169485570876.9220.4572853115072402058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2aaadb7bb52ca4b15c27be6a66d326564d3756636e1bb7a5a731514eced78a
Date: Sat, 16 Sep 2023 09:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694855708
