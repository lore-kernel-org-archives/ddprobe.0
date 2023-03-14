Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DC4A939
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A1AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678824485;
	bh=zhyObaSW6sWcEKIoykrFtakj9ifUFOuWTLPnCqJQg6I=;
	h=To:Subject:From:Date:From;
	b=O6ij8O7s4z3Du/AApHAypTA7Qd1yolS0IGn0qrQ+YvteupdK56KkZ9YoQSsnPq9bh
	 4qet1BDm3hR8kvBQIJ/5gBOVmYgntQ8Ojjy+TeZ/jpanpnEpH8WiYeNGEA4uOlgSIg
	 czDRN4zvcSCyC6/oCpETo5KAuE8RbKxOUNA+1Gx32qacCoyRGz85xL3rOgVl3YaTf/
	 ZurgojFL7JgzcSfDPGANs6UyI+//Vhyld0eDmoGpT62sMWYm5d5m79e6CmlY6NVkyE
	 USGt/7gmVu3g8qorjLQgWaF5lL8vNVbz4wFxKUi/Duqom0iBjtaHcr24b6bPao9ued
	 NoNXuO9BDTsjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07BEC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167882448578.14625.11313894158692640787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6071e854e809d8a675def7ec329a1db18939b20e83d6d5afb5764b0385845717
Date: Tue, 14 Mar 2023 20:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678824485
