Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E8B34846C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774124694; cv=none; b=Ek9sOGb/37b+NVigjVUBgsxwqNcWf4J9cO2QqyhsatdyI8LY8eO84CO276yE+T/lJoIII76pwrZy5ExJAyht8nCxdh2n6icjZgMUjwSVHVEolrH7mTXicF7mqRacacYy7yEBRMyV2wPQh05Gm2h2MRBV5lnDAJ567kp4AVGmNP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774124694; c=relaxed/simple;
	bh=Ae8SIzJQVJsEBB1gtW6Aa0BH1yblFWC1dSLlWLkMFuE=;
	h=To:Subject:From:Message-Id:Date; b=ade9nxkGZm8yUlUOx81wOf3ZNgy8+6A9qjLDlA7XpwRl6/nNfb3spChCtPUA+Scn/5Zk160Yjc6Cpb2Lw2+bcv/lumNS7XBhSULtrZGM7HxItQJ9aTrqMLX42YDo4hY5sKfQzmrL2TOiuO1AmD8xemhP7NB5cDAS7bnxnx2rLBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2KYA0Nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2KYA0Nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC1BC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774124693;
	bh=Ae8SIzJQVJsEBB1gtW6Aa0BH1yblFWC1dSLlWLkMFuE=;
	h=To:Subject:From:Date:From;
	b=E2KYA0NwERqeOPMiPigMQKTmbbC+EAxOFKM3Q8CiEOxLGwIJbsbm0ftCbmXVQHtTc
	 L6RDERYGJBmbKEdLAEWUf9+t0R579ZJFuiF48hXQEk4ml+Rqgo+U1YziqUmo/mr1ge
	 98ekz98SR6usAw3dTX68FjIlQCiAx1IguQ6NzvS2m11aM9Ja0fKTBX5Mg8Ns0IeXah
	 krQ8RGbqn4tz0xKIvGqhjwEFUMfTH9g1YMrp/2pX/iGM1mYujMktkJzfuYS/Ilr/HM
	 ZGBFATP+8RAX2aLaBwlszGmL0Cf5mybonvXCkxA7hqUdr1wbFOJ8wmnf8GvOKadqOX
	 Zkj4gpunZinxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC88109448F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412469357.14235.8207461508483480659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6934119c46ad32f4b13d495a38c6a5406bb7fb65242d43e713183f89096908
Date: Sat, 21 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774124693
