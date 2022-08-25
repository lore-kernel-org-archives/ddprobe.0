Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48261841
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705FDC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661437852;
	bh=x6t1eguSl9BWKAoffylXNKfpryp7wRxRM6LZKkaATVY=;
	h=To:Subject:From:Date:From;
	b=r5azkrWBgqAmVZ3m8yg8lDpk9q+/uyGl0VyJdEha7kNZEulpItpuTaj0JJeyVoC5w
	 /HgSvhJxRsQ6O+u7LdlZe+9W1D4IhLSZ29kR47r46SU9pyV2rk59LfUWZ8kYes/0D9
	 bckuhYp99wPV+YsfjOr93gBnadRIyNBaj/bkU4pHMapbtbCDgezFlxlm8BaWJV6bEY
	 zoZq2i3kGp8CWqRfXCzVeVh437wUXdot/GQdOznnY/tQOJlutMm756qdRfP9MP091+
	 nU8Ptrq/31Jh1FdjtBig3PW5bhXW2Iizyj11ZXAe78Ai7FFLHk70IPhN2ruZn5zJNt
	 ldzTa41FWMgQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56106C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143785234.31931.9078835580773294842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a08ab4dcf6b2a60e28a0d258099eb08bd1cafc42e61d06cde1ee416d6af3241
Date: Thu, 25 Aug 2022 14:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661437852
