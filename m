Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF5930100E
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787157634; cv=none; b=YQvxXVAw4RntIsAAtgYaH17HzMVbfvdmbDHFTqIcNxszO47advUONJlPKXJyrzazZKTrEgdJT96st/P+5az/Qg5vadAqd4RWSb2od/8Ofm4Tr1uNarNbC8xKMjGnEufmrndk/BPYXj3QQry8FyWxkz8g7lDyA1O20padoY5l9hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787157634; c=relaxed/simple;
	bh=4otc/pTm/fojJnFcZHzDs2MFJPnTdLManI0sxGdzQ3k=;
	h=To:Subject:From:Message-Id:Date; b=evbL1PuSCppVYmxGNqiOV7Cp+DtmD2RlsOEdD7b+8vqsNTwHO0tRyAOa343hOohQUMoQYrGGQF+n3ld2QzgIGJSVGrV0v6igYI/1giQB2uRXeRyz5sPWLXW9FzL4wuASoOPjHG7ofBEEUVMjXd9Tr1Q8h3HYC7eWzqfoJnpBuvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlhDTIoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlhDTIoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BFCC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787157633;
	bh=4otc/pTm/fojJnFcZHzDs2MFJPnTdLManI0sxGdzQ3k=;
	h=To:Subject:From:Date:From;
	b=jlhDTIoZZTydju1YupyIeIXbKsU7p5egi/DxlmsuqW5/TpW+q2QLz1MwkZN828mxA
	 t2Gfzg9k+l2Wa2HSL0v+EKshP5uKwHUaVGg1RQ21Oe3vn51G/y4IpgTg/uL3lpfvEP
	 NO3xh5i6iMFGdY8swRasVleyo0Be4bdHldKuA8ft63pJG8DNniS1WPyrUlhLxb7aNK
	 vufhXB4s/9uVhNfSt874PMkzC/kdOiBa/DL0xB6iZLhnX4TlksH0EThg+1Xt6dsrBP
	 YDXgiOKJ+MRDSAXQ6LxEUGvVOEHrhh+VpDPHhgxLnJtymJYzvKd38aNNw+h7ZkoIbL
	 8NYmobpGvaFJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BFCC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715763373.9604.7044679817864181027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008042f392f217f714b561fd16abd643054bfeec98fe912cc2f7707c171ffd01
Date: Wed, 19 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787157633
