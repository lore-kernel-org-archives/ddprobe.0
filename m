Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C66E881F
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C788BC433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693560848;
	bh=egagLeby8sGpXSAHYSfbFxW34bE2yItqCuULaD3cUOI=;
	h=To:Subject:From:Date:From;
	b=lhf+aWoByJe3HDTB8b0AfKlAzuKes2372/JcXocktAqMkgssky+kp2mzqUUKdWkEZ
	 IsQsx6XDHYKb6ajoqwgABnwRRUOjl2LONeAy9pnv5hrNZwepUQgzod5xlYLrXMeD4k
	 SiBW6jWA1csodI7oM5HWP/XCuNA68IkyVkea+U+oimPkLt7ZaBo8woCvB5HVQUE4F0
	 9wwFGwYroNMc0lwIdP6198XnaxHfC2AE78Wyr2q0CtlDI0yyvN4H2fcOuzLwXByG70
	 QNZPkjkyiUpDwqFp2DshmlnnIOcG4iUNqx78sqXhtNP0TzuSLTwlNbH4Z4/cd705ND
	 kXI4azsf7s2dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D55CA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169356084867.1223.14605069580968594311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1372b234be26297f8ec2b02798a12733420a0d549cd1bf8c73a709cca3990717
Date: Fri, 01 Sep 2023 09:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693560848
