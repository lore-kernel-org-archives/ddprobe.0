Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2FF22D78A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774496094; cv=none; b=qbhfVyjqr8FRhr+4bqLs19Sxh2weIPy3xjHX7JNZPN6mjcMC0V7Us2a5RD7OJ5kzppYnVX4RltC9R+Urzru5Lq8ANgJKlhletYYCN7RoUsLfyZ2Xhzt6EZdGOr+77Zh0G732gqduw+v3tjVQzX7GNbFa6qFgMTBqOfLtgTfnz18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774496094; c=relaxed/simple;
	bh=jsc7LPa4Bx0U5GDG4IIcFRZntcTuq2vkMDOhUe01hOA=;
	h=To:Subject:From:Message-Id:Date; b=HVvt5wSvnoCyDd9lsydZHWzCa7NSa9RjWjFdb9jH5xRGCTt2xIk8vn1YN+ioTNw4YD5I15ccQ+caMBFl8ntKA/sMllBqtTcja/1W8AExok2JSRHhO2AHgg58YwQI35vmrMd2OB6TpcANlPcjiRR7X3sh9rG8q9NCx8uOWM2XF10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0t0D/21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0t0D/21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB485C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774496093;
	bh=jsc7LPa4Bx0U5GDG4IIcFRZntcTuq2vkMDOhUe01hOA=;
	h=To:Subject:From:Date:From;
	b=n0t0D/211HKQ11Ea44u3oNLkjPPnMei0ODx1Ee4jKPdkV6/5h68ClYcwLBqXbZpd0
	 qjpPkoRPIFUvRtxuHtZcAczlZRxL9WLnMFwVQAB1fCZqq69TQrUa8JK+UnQDTlJbgW
	 eq9KX+wZfUe34/0Kh0TS4TTf3/hGm4n0bJ+sWiptuCkHRwxfarUqXwpLqHYWFh2n2B
	 niqc7sga4udrHYtOq8C91SmZeIBFOWh5EYNoW1KZdHjGNZIn3Z18O1+anmrTe4/c45
	 d+6aADLE7U8XT9YytBiPR/pgnbT+kLf4ugu4mja07jyXPtl/XQXALc6hGYGqETMGkK
	 /d1TLeGzRl2kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C70109E542
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449609359.1698.6633956958638146524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3109942625206b40e4216bbec65dc165869ece23d4acd9ee975a7701901c74
Date: Thu, 26 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774496093
