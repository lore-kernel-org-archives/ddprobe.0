Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C13833D4
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 05:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58CCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 05:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695359108;
	bh=3VbVfjSaP6/r1D6RnlAe7Hxurem62IVjFGOnuBF1y2Y=;
	h=To:Subject:From:Date:From;
	b=RH4Hyxwz8/59EwkvUwGEup30lzEdK1YJZVwMPc1qRJlHER47a7m9StNBAavE3Ydg0
	 XtBT1kjXSlgwB7HPF7he/Y7vcPITl/Jfzb6J6LIhpcRHdvwPTcAlABvTiFIcfA0JdW
	 qL1SonALUw4jXhn5s3IqVrsbJK+epQlNvhNuzmUE+NztQh8KDNIsyH8P4m/kc7VHjG
	 SS/FZ62oXO7gl4fSe+5FKC5oB5lxYgP4FcAcZfcycmo1CnjDTNp/TWcrIo0NUMTrhp
	 DgnTqWCewGUV6jjpX91vSepcG8YBhIzDTLTIppGOTtnqVCMQLtvkxrbdYZ7WWAW35W
	 6h0hsl9iZSYHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BD2E7D0C2
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 05:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169535910873.24093.7020374203972963065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5234b35a92a4d28228562a118ca0ff2283cd74b93b395df74fd0699e828fc31
Date: Fri, 22 Sep 2023 05:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695359108
