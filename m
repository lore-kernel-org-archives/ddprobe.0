Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C090517C3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E9BC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665622253;
	bh=nQgYdux4roft5E9fmgavHrFRHFvn5wFml4lnYPCRWHs=;
	h=To:Subject:From:Date:From;
	b=l2CcTDKtlY4yQm+YWgopCk8jIT0BUC1T7f/136LV+9ULIArYtZKhuHXUue5N9KVrn
	 tFRhAuS+zZXH2C7joBHiuTIT7kxA0dzIJAJPcOmmsFy+MJ9/E8xxnVZve93C/ZESaI
	 1Cga2dehptjsfcJafJWH93QLOGHF5H8DIovWjt0qI4o/huNIeg5epHgC5gFq9I0aeo
	 fNdTSvDRfRJVLE2LvShO5qOJLOUSLNycbiMXt8BsyDxKPEG9gTgn/jAbIuD1KeUYsp
	 Pnea8GrOLFPrZ1XYuCDH+xwRnaLemJ+CwWA5eSaky+j9qSFNNET0kMa79de4voz4re
	 /hRxcJjyUk/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BB5C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562225334.32100.8941071051575372100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34869a73104a1ffc1c8152ccf0ff5fa46cbc157e2a5ac52492a51a5310724de0
Date: Thu, 13 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665622253
