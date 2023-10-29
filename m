Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B96A39C
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwhbV6wT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8965FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698585496;
	bh=2RJLmsSMs+bMA6//leGN4Rc3L9G3cpC8N67fO7DpMuM=;
	h=To:Subject:From:Date:From;
	b=LwhbV6wTSV5kh8WXWRjQB+9JZiqv4CNFPMBYmQ22+xF4gvJKbwVw3Vn7CCr31BbTv
	 rAZ4054uh1zDR5ntO9kPeWoSuGhoVz/+O9MU5NCq/J+PAd8lDFGWTlZQF/uuUeJslx
	 lhkdJL97cFv3MiJLk0VsXVHj9+hiYcpyhco/qtlOJemq8c7fpvujZQr9/w54fRNFpA
	 KktU+6Xc4ovKQrUpjmuufJnJgCAR3k+AEcHBLn4SmZsjUemI3xlRNYGWICuV9nxL7F
	 IIweP1BJLD4Fayhpe0aXtVmHBZk14WVh8Ph1CPB4eZ8mIrIFpAxBMd5XkHOK+MAULX
	 PCgKiqCGShWZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BBFCC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169858549640.19120.15593720591759472642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7ac63714c4a74f8040b6938a4f5def2c906569d98447e811e75dbb6eaa5b24
Date: Sun, 29 Oct 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698585496
