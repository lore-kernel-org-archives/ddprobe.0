Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E770CA460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D6DC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670532687;
	bh=0DTSXjnJLxrLQNBkV3/My8hBFGnslrfebp8gbSuKs8w=;
	h=To:Subject:From:Date:From;
	b=Nq8+dgiIKwnxCn76mJLzdx55u4ryGG9qbSzjgwJlywkgKbhcJJ8kviM1aVcPK/AyC
	 jIhihvXr92h7fgL45wQLw4CtU7J+goLdAI5jinzTm/80EcRC5+N4FWDLXq83Kbn5Cy
	 0IfUgJPdf2KwcBDcqdHBQqlT20Q4jMpdJAw74DuafwSVwUPmKjkK/7D7nSuvaswI+L
	 RaWns9Qk+QRYFDf7u+OFg9F+m5kBZmYd3Evk4NVlFOuYkcxRODd5qA8USNG6882qhg
	 ajzG+zVuu7bwZt3ldz4V8PFNzOdDhSdMUM1HJjOP8jxmMGzpyLKdMfvXDQvyLOORrv
	 fK8bXom2VyjGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA19C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053268742.10867.16338800523954680525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7545b6acec3dd3a9024300c3e05a316ae8021a95b9755e637819c57d60cdc8a4
Date: Thu, 08 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670532687
