Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5017D1F4631
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786462834; cv=none; b=QHYOZZbKRdc3eVBSqDUo0Md6wlFkcsX05Y5uLOKqVXlpH8vSRflNDdkQB6K6+D2AgGxxWTnx8a0VToSrXXwsrq6kZrBjYb63abFRq8YVoFvNLPpNvh052FXlDIH/fzI+2ndEbQ2RcZGTn4XbRWAIn3FZAnfPNYdQhpvg2q2q4Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786462834; c=relaxed/simple;
	bh=M8lWcLFA+S1QeE6Yfr3Kubhv17BvEaYDwrITOR2DI0I=;
	h=To:Subject:From:Message-Id:Date; b=gBmDxPiJUJ9ikqQRvK6iQGvjaGFGTZ78Wuue+iwVxqByXC+MEcEQgsAJsgKdCrIxpbyFJAbbwBAmG0eTBkdun8WLtRG84AEuhcG9zrX7QIPftBGfFL3KURVzLplAOQzBP5eJr01NpAdx6WfHAXzXVi1rwuw9/IjCMwInL6yfmE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWQ+IPks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWQ+IPks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0C5C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786462833;
	bh=M8lWcLFA+S1QeE6Yfr3Kubhv17BvEaYDwrITOR2DI0I=;
	h=To:Subject:From:Date:From;
	b=rWQ+IPksrEOYstcS72mIt6SjgdrwrPTsUpYzndwVTPEovcMuDcqlBUmR/abXdmd36
	 aMrM9hef3/Te4kMoHc95mABhGLwtlIsbt8pPAw+7WfOP3HjXNbesnvi5gWdxF1wVdF
	 JBbIzRqY9LITKbFD5guPf2kQGjtz0eS7cVEB3FEbm5pXjy8XXO3roR0cXbgIyKpbtk
	 KwpzptGvVqShIOFrRB7pPpZzPnDOpbvmvN8HSTujbFF8T49hx8p8HLEXmOjUnwiMQW
	 CSgFiTbDaK09NnpNOLA8qOj13/nGcMo72TnB4LjDNy2qthkSQkhEg4hTbqgBJfEtgo
	 DukZO9Hfc4naw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11FC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646283368.10055.9171633773966236866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57526439d3d050d2eecc26d4aaf58887dcb5bac5e849f0160a94110590097e3f
Date: Tue, 11 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786462833
