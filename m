Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78C92563
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F52C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671700887;
	bh=ExCFFtwLkMOsiF2pC9uOeQqzK00AjeMcee3LNxoDp2c=;
	h=To:Subject:From:Date:From;
	b=M1QTi3C8Td/kpy/Bwt0Q99iUf0pt2zG3yyQJA24Ay9V51nluHZ8SqiMDC4m8Vrt7F
	 qNdp1o/FC8WjftGLlAXMN2OLb5x2E0eJGt6m88jj3kbX78OhzyoZ1dE5csPdNMadXC
	 eaM/cNqAsqBuCi1TFdGJlD1ORXY+g93oWnJQ87iRfHhlKSQKAXlTBCLPLUY477tISb
	 QrcoWhokKDcFDDTjQ5odLjCRjV+n2JqNEytZ4ExNxHLxMmgHs9XAKylop34SnVNJci
	 4xvtt0Yu24aYV5kj6utO/nfmFfgbMJjAGFbBTXNwmE2dCe3LAfT+3KKygTLy3OJ9k8
	 0oTW53UrSPcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAC3C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170088738.29729.6315581159219341755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c4bc5540125151f03ca54978ccc4d0450ffcc2b79ec6a40da86129df15ca87
Date: Thu, 22 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671700887
