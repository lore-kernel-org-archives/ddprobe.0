Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D9D24F2F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7572BC433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668181854;
	bh=/t5QnpGOp0im/w4uF/IL9RY6dvDvVmR+oYZ2cqGer0Y=;
	h=To:Subject:From:Date:From;
	b=aQyyOrMS/gU2hfTU66+F7mDl5ACcX0cwvB4V/slc8EY8nFXxe16bVbAHRNvU1F/Oh
	 viHLYU366I+2hDfA5jsZmUyD4yGtGyNC1oD2qTsG1Zlc7yQ2yVRJnhQXA9LQG7UNNO
	 +nex7I6GJY/T5ywmuGdbSwHwKhI+exosapZWr/5zJOBhAfuPviIFTdkyisMb0NNCrD
	 9ez0hLBDMqzZ9TRUkP1pxmmrUmWar6FPksPjN2YPGPcJINkp+eIv9ed+rH/y1NepJ8
	 Wo/dQTVVn1jqRHksSgHZoHDbl153ipS8lKp6ug88Rx0WU6Iz7XN/IABdGbHWKTsuPR
	 gRD99Y24PHQNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5924DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818185435.7545.6737044564046203029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c782b1dec812fbb891b2e6e92d5820be582b25768db2d45ea671ac2fe7f1dc6
Date: Fri, 11 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668181854
