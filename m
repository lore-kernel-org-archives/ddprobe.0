Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7580160
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CE2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661668852;
	bh=64dfrIj/SGlnR541wHzNng8hGqo5dQmQkNxJ1IniOL8=;
	h=To:Subject:From:Date:From;
	b=ipLO1w9SkmX9eYXGGk+A1L7e6T0s30vzwcJBEcw+EFTxyuuLKOkiQO8NtBkY9JkLA
	 PJpV0f5DkWgmIA5tYbWnsF7Aobzzge9FeH9qMdoPN86QNTCIszDNlhFXq1/Wt7odcl
	 BNVlU3aDtpY+IZmPZIzXE6iNGe9pKnwLf/0h+qqgpLnH7jq5fE7zZapm825EYByswT
	 aiVp2FwomJcUPmpqjL/RRaEu68oLKT792Wd/NAKfStLFoMY+LCG9dZ0YpMwjm8NRJB
	 eA1C+/+0z7nOq3I6CFVLbBPha1La4NFCvbOz0GhvIIWbBzKzcSFxeJ+HqRLYzYjTDS
	 nGGtxNJH2cdCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57143ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166885232.26691.4891200441073252307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7bb5f156ea2b73e48cd1e8ca7d1679b2aefc1c91329e66dd76a0c78f818558
Date: Sun, 28 Aug 2022 06:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661668852
