Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1CB3D69
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dF1hXRXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8559CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699669096;
	bh=gyXSSZRYzSN5bTZAfyt3JvdV6fVFSvX7ueB4sMYL8rk=;
	h=To:Subject:From:Date:From;
	b=dF1hXRXueBZH7U9JV3d/pBkNM49Ga6qanw+E2TUkMU5u9+IF2lAB2Qn5rWwxWsjZH
	 gOSwhP3G5BaplJF2jcad7n0UXSnV1xNNRweRi5u3NmSgh8MNn5qpCzrv6DptrUZgjK
	 QQNiUy61AWIrCsk/aGiko0vetOG6S9oGfl/b1MisG5T/wBbg74FXN9QCbxVXbJsKGN
	 LOv3vwLgb5yZq5pQ117iG8V3vrm0L6joQLOhx75rZ+XIZpJVUqT38Yi+s4mB2SfgZZ
	 oE26ffbjHCY7SQzATYAY/vUxyZo/asROACiqZHW+U9Bvt82JXLjHvzv1tXkikTcvmL
	 6cKUKc9J2kvIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67118C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169966909639.23763.10554023450683115587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac65b487d1ca441e7fd085ea318587f6d8d507a617008a19566a8592692091c
Date: Sat, 11 Nov 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699669096
