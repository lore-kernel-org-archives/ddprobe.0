Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5480E6FD4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 07:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1534C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 07:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689319268;
	bh=c2UJMgLeZTacWt1+XmTGXUtWrW//iEQWN7kEkvKEo/U=;
	h=To:Subject:From:Date:From;
	b=cNElCxgHMpkS3E9hfgIufGTNkMmB3ydpG8UvnqoHOzioOblAAHsKTcx9Z1LLspJ+Q
	 y2w25OBd//gdv0PN1tlhlr1Xi2pQjnHSt7JjXNF+Riv3L/1MEYeGSvJeP4i+VBAdDU
	 9EmmAos2IE6UVArOOMcdPXIhMnkIokSiKaFTZBFAxbc9Ba6eAlfZljDl6Me82STQH9
	 Nf6Cg8WbwNb0ri3vf6NgISqKTFyT0I1qKt8TKPhddStInWTahMj5OJPBbEz1HVXW2t
	 I5wcfXvv0dDL4Ww8M4O0hnmilvlpg+d8bVBv8Dbab/+vTJPqNr2iP8mVsfv0hYcSZ0
	 6gIfjJ0/yhjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74F6C001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 07:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931926867.1023.14816420562668704977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dfab0977ad1177413aab7f016770fbb35a7a9abb3eeca4c67063d4d2d0ed51
Date: Fri, 14 Jul 2023 07:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689319268
