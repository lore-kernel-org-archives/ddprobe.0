Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08384217659
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773096894; cv=none; b=kJAJyxSOOyD2o5XOZ1tX2rZFg9LiI849SCSPpMU9OIrmJRChimSbWn12/Q+CzcTBsPePYyFBnJrKzOI+sPByF9NCZzXJFHuddVFV7QkF6qANJTlLA7nC2DYt6us9FHUI5wL4O24KpUF+ElDW21g97dXR2UYNLx23plNJkeQlGkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773096894; c=relaxed/simple;
	bh=fmO1Dngdpj9G4EPSZpdpO8+UzvIavN+ttWeSWsOS6+M=;
	h=To:Subject:From:Message-Id:Date; b=Exf/nRdWiR6XrkNMgYVjToM27D2vaNUxXhXLAc/6+GrSNKVog0mzRvvFr+pID+rFOZ8iGvPs/rz1mUX3FFUPRq11fGueqz+ISpcaBi8mbesBjUHyUOGKfHQqung03bHHzQNeII3WOiaW9k1ksQcQ/Lq/eB/DYQodN/RikIkxG+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EN5s9cUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EN5s9cUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0F2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773096893;
	bh=fmO1Dngdpj9G4EPSZpdpO8+UzvIavN+ttWeSWsOS6+M=;
	h=To:Subject:From:Date:From;
	b=EN5s9cUA3FG6a05UyoU+u0LSDV6S9n3Q1fmcRrPyT7ckj0Pgo5UMrbTQE8fCzg8Yj
	 9aOYdugjrXJwxOoLbcGvUDAmqLEWsME5porB1haRqAqiqXzf4j3SyJpOswk803sQqz
	 JiZ1w2/ThdpGBOaAC8NZojQMWISUzqVseHbblr7V9eVWS028NB2j4TXdOdiMn6DG2P
	 zl1yWRU3tqCaruDjQ781qfWS7g48pZOMfu1Nvj3h0ddcBoatvyCUUV4plFzC+zw0P1
	 pY7Oephjak7ScVutv7XleEHm7dJWiziLexAeo/VDUrP1gBj3jxJ8q8KkOublrWzxLf
	 dOLG1nykAeilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3FFCA191
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309689357.14656.2941377876366332270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b64a28d3d7fecace4a2b483f5be2071e7a3bf3ffcfbf026777b30b2d6bc00d
Date: Mon, 09 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773096893
