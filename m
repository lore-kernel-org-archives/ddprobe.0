Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523F6185C
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wrl5vwwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2D3C433C9
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697426228;
	bh=z1IXA24vCWIjf/xFwf9cpYUh5ZGcJs9V7EeyR++zpq4=;
	h=To:Subject:From:Date:From;
	b=Wrl5vwwCpt5mMBkj0Us0Ke/fzBAC9D/CCytAZAkl5gukRbc9St5KeZHDKcWSO6k8C
	 GTywOpadL8Dp/rbfKH2FQbPRt1vrQRJtZiKIptx1hJC14rzsdJ4zj3anERuW5KrVG0
	 QdIy/EqI1loQxYKdmdoI0W/osebVAwRrNYySpTfA1v6KM0FwnS4Vu0mvbfu90HBFGG
	 5SS/pIsgr7C38z4oCr7KqpIrald72RdovRw77vW346zdWMc9n9PYhPCMf+0Ih3/zGB
	 DmIAvZD/58xz24qmVnIISTzBoCQ+HHcsI1YuGv5X2+gFKuvMolx4Lbh/LjrK6AYUcR
	 YJcaWvaDow26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF04FCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169742622869.16707.13081207990421189689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2168cac21d67f87cfdbe0c9f2af234b4946018caf65d6f5ed4ba4850e9bb8faf
Date: Mon, 16 Oct 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697426228
