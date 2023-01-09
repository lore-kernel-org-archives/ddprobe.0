Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F411B15B7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E8FFC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673232687;
	bh=LOTcXAV6Y43j+oVyS4oViOBC0eyTLkQSfE5xRL30W4U=;
	h=To:Subject:From:Date:From;
	b=ZfJ8krSwVMdtpMTMP4XY0tSVySxKl+ExBJzqD7P4lYuaiEZJ+aTKZepy/UycoetsC
	 +Y5W8hp8Pi5YNRIiSO7u21ug4PiBU8LIEMklgqTgKL58G+kV4W5qsf9knBYGIlnIqr
	 omOxg8LHwzhxT4WthMrLXDdbY6rCn5n87Gn/FPDiAav/cERHWSoIDwSq3xORPsOf+p
	 gbGWPMSp9QSPUc/4G1h5PVpC3uZViWZ+RM3LXrbIKoUqpgYp8XebuG5rWq4ulkqEKu
	 2gOnLqaQfLVRJVZM6AS81YR+8HECfplYHtJQttyNjjTISiDUL+k7agH0O21C2EJyo5
	 ZHeI8nE3vXPNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A04BC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167323268737.20765.14422674508367227321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479d02f3c0ccad8f5e9d1e33444891b566e6b903e55ba0ffa0e417154e9823a8
Date: Mon, 09 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673232687
