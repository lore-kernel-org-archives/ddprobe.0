Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B56A1C05
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D644EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680158345;
	bh=dxUO0kExXYYNbKIsabZR2cD4Vkl29/L8JlbJsQQ5r88=;
	h=To:Subject:From:Date:From;
	b=fChL/XxreNGeuf/1RWtLhRszJn411vrRAh6RuRwbFsMSiF1a5y6O7XEYVLtABmtJ8
	 GVNZDzDrkADfwaOoXU75X+FnO8skcXAWyCfvc0QA7KCbuesk3oaBxXwnwOInXDK2XQ
	 vmigbP6IFUP66/QFekdf2Ek3ZkgL5inM15JKHyc3Ad1XJ6NAyTka/SSEOuzX2Ma0YY
	 XnQsbZhGObtD3j49KW82ZIDpIxfGtrD2PlMHI3/EITjFx9fseA5Vt+uj2GJdDCTzj7
	 uTu1GgtmJsHEiqtlEtBrjeFY2UQpnP7vHSIwoJgNw0/ZLKP9wIp+Yy4bzDz4b9BJoT
	 JJMRoxQtjrpyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5E4C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168015834575.29645.3452335996754341646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e65259b5417895104af68f51b8730b48708728fa425f853787f19a6034268b1
Date: Thu, 30 Mar 2023 06:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680158345
