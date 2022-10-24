Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B66659
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760A8C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666598453;
	bh=BjnBxrd74TqOgHcQMMn14NhfSVqnIhnHCHHDwtxWTyY=;
	h=To:Subject:From:Date:From;
	b=eDjCOP8rM1PQWN1LobRaPFSpAokSI5pqy3WUkcvn9RQ0L0JG+GU0xgQ59FUBeNc5R
	 qAH8cqiZfXx+84Movdw/bcefVGDiqHMngs26taDlco6u60QmJtvhjYGWp351OYU8S4
	 G4FsuALXm5aqqZBLNMo3AkKGkT6olPiqy8XQjVcuzkiS8YNR9PF5NjE1PPUUvLo+ru
	 7TNdB5MnYSO2XC9aWpUvV3eNIX9QHeDfmVXtxjEaHA9hQ/RdCGh7t4SpUWeLjq8cXh
	 lROqGFCbFGoW1l5kGbWFtULxoS6boLfFRV1Aa+vQKsMuIFN/ZmN1EAWOsKPEW3DJj/
	 /wpSzZWCeYxGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524A2C3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659845333.9016.16446015997922070176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4b9c0ce088e82e3a880abf4b20cefa5de365590d0e7878ae0601802f581e5f
Date: Mon, 24 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666598453
