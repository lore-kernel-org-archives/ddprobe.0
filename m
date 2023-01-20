Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76D5BD22
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86FCCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674193287;
	bh=Mtv1h5LmiGstrYxNUukkpu9SoDtqQi4tVlT0pEMl9YU=;
	h=To:Subject:From:Date:From;
	b=MpDV6gZU16gipdZZ9tNdDL0V4QAHwpvEwOeFaV0imr+U0cmQIzOST96RV5jO1bOeo
	 uFaD6qvUPR9Uuv7fxxCodsNl8pp4uF/rwC3uQZj6QqXq9Ghe28eN2/Gu0IKsyOQB27
	 ouJYQfttPhkCbzqbVLKSD8tI2TMCQglCmnuP22F9K4VwiQulXCLPAqeFwSzpuM4nv+
	 0qYi/X7Lc6CYd+qf4OAoSv5XHkBQqz8fxRgUm5FBlArDddQT2LKJ8Povzag9HqTArF
	 PuyLNI+cBkSQ+PRAvfcsU1cuPqtHMBCB8ngQVLz4r9EP/VF/CnBvkpBMSzj2dooerk
	 zXU90SwSfZfdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BFFC38159
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419328742.4335.18108307237926636189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0729c27a6683df8baec08968361647d50a4394b949cef0d5f6e07ab47bffc6bd
Date: Fri, 20 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674193287
