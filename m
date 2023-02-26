Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358DB36E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4362C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677377705;
	bh=3yTzqZo6ZBwJpWOpSvrqW+hRpJPJZ+AfjD4GPa8NutE=;
	h=To:Subject:From:Date:From;
	b=JayoQUUtmxfZ4bw/lmDKjvou9tI48wzRBM3HR6Re3g2jS3dFX9/MdGn4er3TDeOTZ
	 xhN1+nQkx9gFAXINnSCYcZvhmj07hHJ04QnTXgA0/qFu0pBK9Tjf/v0l4OnCikXxf3
	 6mT/VZo5FiLwsBaVV1GnGkOgrnYa+i7SY6NY2AWM4/I5pJJJqXP2bp5GtRPdhnDWZG
	 CnxLu/pu1sZZ1a023KHuajouSsFkudaatuIbQJdnlZzsemVOiwfGeFWkpsdWLt6A20
	 QtYbqHXMsIY8MJuU3tY+dDpxaNH8fFZ0947Zt0K9+PLYVbW15Z9/CblvBnR7jCDYkW
	 nIBIbYUvF3YNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B757DC6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167737770574.6668.6672904899623765901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685a161bf9dc737c8a166d1bd22db12b7229f28488d40346e033eee18a31a050
Date: Sun, 26 Feb 2023 02:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677377705
