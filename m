Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0AE2569
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7596AC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664658053;
	bh=/W5CNCDMUKiyH6umI1PW+OzXtxKrNBCPmkrzCjkdKzw=;
	h=To:Subject:From:Date:From;
	b=YAc6KN6WntDhbJp/pxDTanWAR3QkRwFdXiIQR01yxTacEjh+7+ycK8pogQtJP3GvT
	 NmtuHeADuB9T6gffMCKg/jRw1Zed+D80TFnnxQTJG+1OjFdIOQ/vmTEaglSMKbwkLt
	 Rfr7yPKAKtA+66Xj/1uSdv7AhLUsTwCKppaH2n5tyY+yU89m5j/+2O8AZZEoDZ9XSu
	 AklmoaUksL1NzMTPrflERmVG0rczX4sL5XdwH8TxuSANeQA8ynNwzBt5dOLqDVapRB
	 Gq/xi+YLT6EtUxlDQban2orLy8xz2RYOWy0TccWSG96nCXiIgz+AImjIMChnk2wocO
	 et2gW/bxFkfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563D6C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166465805334.28825.13414318930199916862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00270f053895860942481ae3877d3d896fe35409acfaf263d8d35ffc3df9687a
Date: Sat, 01 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664658053
