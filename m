Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5568F21CA02
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785078034; cv=none; b=W1V68RaMC2ZfWrxzHCc1lXg44Uk9o7Ezqx9Vp1Fh7uYWTRKhGDZSri0yyBobeZspDB+dVtd/5fySPi6VPlHaClhMl2pV/hB/vxMHEDZlvPalULQtlV17ujFLHQk2r0GJB8kz4UWohEgbC72oTcwBhLpMWG7BXWOLiY9/IJrJV8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785078034; c=relaxed/simple;
	bh=PDV8Vmh2x8wEjbTm/5GYZXsAZWOjoCi/LxuSXX3ukEA=;
	h=To:Subject:From:Message-Id:Date; b=qB7x5hzgK3VhMvnFQUn3CJPANw7K9wTyXgGJwmVKinqAogVB9C+YaDlmO6EwTLh57YlnFQ3x+ThEIbgmrIqsTqZzfLylj6ZXcaQOOpHkm1A/NBUCaAhBEMWHlrGu7mKMeEsG4c1UgZUspMPO3/RClkogr2jqxjnd2RYQ6gjMA+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idJiuWe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idJiuWe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BAEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785078033;
	bh=PDV8Vmh2x8wEjbTm/5GYZXsAZWOjoCi/LxuSXX3ukEA=;
	h=To:Subject:From:Date:From;
	b=idJiuWe4tlCL0KjK039BuwnVxYK+l4AwHePW/4rdihn4jPOhHfQHx+LGjmM3OuCHE
	 EQtrwmr6aNMONVoZt6e5CfZWBGMetLxgEXknfQRVelB7sw4nzGFs/2WBKc391yvQYL
	 iP668fQg3QXsu6wEqWnDGyxKZDCNJoIrjQTjq8uEibVUVbQpEZUoThyXZxesIn/yyJ
	 Fh4uzaAAPiFOUeEagbZMLFAq4R6rp0sg06ZjXg70hSBmhQlyk3dzgMOmnJMP8xMw94
	 sGoiNO0a5EO5XOK4WvC/DpF2pt6OcrfMH5zfE2i0W3luYbgoP/3i4Z2awwbt/TLIOI
	 4Zmex4V/hm4Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA928C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507803368.32125.13446598608257310850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fe772c644777a8e67d84dcd13245c35956bf1832b02e8ec014600f63ff83fb
Date: Sun, 26 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785078033
