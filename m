Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477301119
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 09:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43D6C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 09:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676884685;
	bh=Em8lU96NX9jJwAR9AOZL37H+uvOor+8jA9RAzYAWr6A=;
	h=To:Subject:From:Date:From;
	b=pXttrGS57Z68iepgHpupthwb3X5xaWz1DT8cYjYN+oSdBsj0d06EmTcY6f0kihqtU
	 MWC6aldw5jhvbBzbyD8EsCm9+dks6+1cAbjB5byJjwb5ZQLyDOTxnNTSNtYr2ja7D4
	 2pv8EndAgy7aYHpFn+yS+VT0Y1ArXKLK2uNiUdceTxZkvcY+5Jau3+3oQ9fTHWwQn3
	 fKyvat3W+G7kLKP/P5zdbgiopjNOUxqmfSyk30RCaUobe8dXgl12fvlRd8n07/FbJu
	 bo0vp2xNetRdMlk5Spxn/8HA4olNRpXXRIGhqwrwv3GLuX1Jc9r4XLbc3D4IrlyO0o
	 33U3M91XqYLrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2F5C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 09:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167688468577.32347.4517460558319610291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bcfe8ed8c6914d6f6d6cb64c9612d4e9e79e30172f9ca243e47010b7bd8524
Date: Mon, 20 Feb 2023 09:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676884685
