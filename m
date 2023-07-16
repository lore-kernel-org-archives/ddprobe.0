Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D086FA2
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 11:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00DB9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 11:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689505869;
	bh=h4J1zUez9ifkEP5ERDb5i5Gsbpka1dpFzNmfjiOPoNU=;
	h=To:Subject:From:Date:From;
	b=RlDHavsED6qw/LQj+ESwevW682j6AO+PAyIJQj1jTc4DjJ1GZTLpPe893Tm+1OfHI
	 gbvcRcJSOpNx+YV4HR4skpuR2oP6z7bdzJAlfjjn6fHKK1nCqBT7Cyz/5RIScVLIeH
	 QCtsdqtcAlKUwIqwX5/ip0P4mXsO5SMF1rrGIldfTiT+BkpID5T9mXhIcKhrzSvcBv
	 Nob2WgVX/Qib0xjdtaiKLMbiRRpULJgdxIx7qrgRwxn5NnHrAV7zg4JXi1P/IvGQpU
	 CWqMh0OaeascuZGmWAQrTNjHM3AZ3mAg1NwhMWeS1VsZnf9Rzr76Ekoav7QmtzAiEB
	 NeenJqDifYSGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8739EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 11:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168950586887.29216.12151061659652853899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38af2dc40535d56ab77a3fe3d1c8d7239eb08415cf127b811def08de5857dd06
Date: Sun, 16 Jul 2023 11:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689505868
