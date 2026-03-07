Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF3A1FCFEF
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772882694; cv=none; b=TmcLHsrOJDnjZ72Vn8iI4H1SOb5VCtgywtfb/qOtQyoQv+9H6blpZkoKTyOsDdzbiLEn59X13W0rir9wdqM6YGCtZZ45rPHAxC3zhor89KbM70/yY37xMSupNnrOTyW9AGU9JtGtS7+lIH0zC4j+abtH4qDSkTq7hIEnGrt265g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772882694; c=relaxed/simple;
	bh=OCOpwuQdJo/jkLyzWsj1zZ+1nMasOIeaUdT2pqUouvg=;
	h=To:Subject:From:Message-Id:Date; b=KBH32eHIEG8skDNIlaMkSns0B9+ExOhICA4sTg/pCAY/6DbnRxzVU0Um1OjdDDOiLFF4uNocdL3lsx388JbuM72cXPkYkG29T9LMAo59saEF9KWpV9pH2yHA8eRO+WXsQ30oCj84/U1QdNO7XmYrA4lgUwB9hN9Iwyqi9t7AioU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FygvBf+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FygvBf+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86F9C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772882693;
	bh=OCOpwuQdJo/jkLyzWsj1zZ+1nMasOIeaUdT2pqUouvg=;
	h=To:Subject:From:Date:From;
	b=FygvBf+Nd+MJUYiRoMtAEpFqEYwxBewb8SIoroDttpW+DNfQ75lwdh5SulAH99Tls
	 2ctlsKP1e47805SbG4oMsB5qnOUImhYbd3P4zFZl2F26yiwFJwn8u0/eDf5H2XNyog
	 /HCTUjJzNgsZvX+QjJLj/fQyD/Lq3mdY8jzICa4C3riJ4RGqlEDFBLG5GJIVdY8AT7
	 6T3sg2Cpq4ARdNyA+k9MPMH7dNoHuDTM7IdpyK1XpWuujagGu/pPK2/dxoohyzhzxh
	 H5d0rxTMNt8UKXOmq9gxLiEaT3BkoDxCNaR2aUbfsRdYzNepSBOXAW7ykD6jyzSVMR
	 Wp4iKv7n/BKQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7A7FC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288269362.28152.14018491490741664497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f68e83e834f5eba7792469633e95a3882bd91919ff873ba668ac8842f20e8e
Date: Sat, 07 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772882693
