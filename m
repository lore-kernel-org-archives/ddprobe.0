Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBC93D6463
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787644834; cv=none; b=F1pudd0ZxWIEvtCgfjKqKlBLF3JFp5gPjks0eadWrI3MeaMiLec9Q0dGr4IMjziFVx9wr/h58hxYHKwJgfvBmZo3uZis0QRE2bhpDma4PZAdiBBXrVM6ztVy6SL+5DAhvB6Xcp+C+1ZZ6KAihuhVk49Xixe4HGURKXNHiJS6aao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787644834; c=relaxed/simple;
	bh=wVJZf4GEhqG9GSZJ96T/aeIc7kcbN726f6IOB8IG/Hc=;
	h=To:Subject:From:Message-Id:Date; b=Plz1tHpTpPCdqzUDoAl2hhZotdl8dkIdj46VYqPv0gMnd8iQMPWkkuUUWrUf6z6PgI4FRJrn84TDf5Jc5FbRutAUOiMuCFHnnY6cYMArRfy2CJLaqrAOuSJe/0y7xK07o4EKFVxfo4VtQJgUxJAnxtZBoBpZSeVm+yg03hqeNy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTl1h65K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTl1h65K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0372C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787644833;
	bh=wVJZf4GEhqG9GSZJ96T/aeIc7kcbN726f6IOB8IG/Hc=;
	h=To:Subject:From:Date:From;
	b=nTl1h65K4hx4tBsq0R6xgrA3pFGyIpUPSWwI7lmqN1pTz/P+zd7Zb22wcuIUgKcue
	 Q4AofC+SfwBFuHD7Wgi6QCrN4it328+ND8eigDU2LWZDpt8Dj5ZkGQnQ8mggdrQRiB
	 TT2NLjajEqvrrXI/WKX13+022DqKJrbxZWu9OTI9uuHn4sWNhkk2lhIgifkws7NYeZ
	 e0dEBVDO63rJeC+Y7t2AIIwMVuNWvIYc6kkx6QWReeGkWRnChAoHD502ac8agjynM/
	 Z8pKuulciy3uBcU8cUR40n/2gNqVbz/G+cr1LSuwQyuvKW5pnaf8gC01h1UsoL58x+
	 pL2Eh09fwiBDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C7C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764483369.20875.13633934395994627952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666c48b85b9d5f5e47b9edd03295187327a960d1f3276b9daa8f01ec43fbdeca
Date: Tue, 25 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787644833
