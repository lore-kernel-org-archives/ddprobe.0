Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B815317CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF60C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665558653;
	bh=zxuiO7qwBTXX9cvFkL8iTBP//Zl2LMJhuym89g9hRFA=;
	h=To:Subject:From:Date:From;
	b=rh/V+j0SA2yFqabVat/FNEE3bDAruRK0CVg10y5rohwvOONeef4ggSpw8vAypCrw0
	 B1qcDASvAo63h7RPpi2Q7HKQNhFVP7+PB3mk+CemqEof2XoWHzdFy1pY2TF3ZUM3Sm
	 OXV+YExmJqd17WHXXya5eRnjHrx7/D5qxZn562wGXienkTZtmcEiK+a4w6p8vaOjfg
	 lAkfXx6xrXIDC2s208/i6z2uiYYwIowBDtGpRXhao8MS51O9ttQsS401M+0jU13xc1
	 Ehs1b8AESm6epoXuwnKpcRsgvo/DpQe0bIItFlj/05iGXB011fjCnf8LVrmmAEx3bs
	 amxWgrNVfAEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509C0C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555865332.7231.9897272412139619753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44849e46edb8823fb8b8b5d86b67dbcd9fc072b5296638f599333513f7ed6d7d
Date: Wed, 12 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665558653
