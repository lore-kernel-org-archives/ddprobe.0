Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D5429A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D526FC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675425965;
	bh=gXZKPyzkf/1p0u5kaiKgGTNtvvBVbD69aeJt+DXhyP0=;
	h=To:Subject:From:Date:From;
	b=EJ6j2ooySJCDCqYfjC70g13GAoe3Sdce3y6uFbzddPlmworAHMYDppaBHTTz1U9C0
	 z4OMlWD0Y6ybT3l9f1yAVKLqW4HUdk9ri1FvSPNsz7igu+VlpvN5Jfh6YjOUe6PskR
	 MV0ASmnaY69hhUvur24t8OMd5+m3O5rwO0Ck6fvRx0MFx1A0a0p6eUORuSJYkPkz+u
	 bnDF68Ufccm4D68ZNe/iJeesviXu58uDouS4bl4T7i2Q68xqb+ZTf68+amEPy3hSdx
	 SE4Okx3v2KzVvAlHdVsZ/73uSnseJjz+ZcWtpmsH06UdKZ4JnROhszB8/Jma6+sOTO
	 v3KwPCEICV1yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAEBC05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167542596576.22119.11146563262182996838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d389fa4539fc0ac48fec92899259b511ea3fe934f89dc4c6785e431ce6334238
Date: Fri, 03 Feb 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675425965
