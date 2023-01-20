Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EAF569E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 19:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33B6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 19:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674243725;
	bh=adMXsqM6e6GhHtEeJj86b8fMOrHqKuX/bmyetgEYAeA=;
	h=To:Subject:From:Date:From;
	b=VsUa4JMCTI4NC+G66nustRAfXSY2AUWG/igOeblq9lGP3DL6kt7fwpSLEb2gRUirS
	 PutW73b0iNiWVZvEXhQD5PYYosleyIphWXdkc8EGTrWPqcjm1r7BVAc7ffROska/nV
	 TsFua4WxE97ZDkuiD3tmtpU37xL4UK9xV5wa4nLg58v7DX6z5c2Te9YZG4bEWrCD8o
	 cVDDiDMhCEUgcXImkeQwjS7QnIflyt5bWwc7hDbnhtTDh+9MvQbaVIDD7PBIb4qqPP
	 A2nhA90SDTWbECUtJrwQfzF1iRHJQ11EHaGnvhYTVDAr6qeKWP4mcHctivT2y1oNpS
	 5OuVM8OVeN+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB98AC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 19:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167424372575.10705.11777243864835261704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16a31ead7adb8f8b3405b7533db4f173eb22629b941ceb1f1b630dc046dcac0
Date: Fri, 20 Jan 2023 19:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674243725
