Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE44526A1C4
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748350793; cv=none; b=RoEHUK8ZkOdog8uyU5FLYx4CI1sqL/rLgM3ry2GbTFXKyhsYywlUPSt7yNqV11kY6OQGWTJodN8+SR7fM7KRdXkLvlfccRUJGzWV1gcY9qBLesiVsHVqR86Hr96nAF1+hF3G1qDnAHQlcY60yT8u7ecIFVBITg/wUKsesGO9Kpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748350793; c=relaxed/simple;
	bh=ki4AeSKIY1miDfTDqer9fAdUTr2D9eG5Fqq3jwOIpCY=;
	h=To:Subject:From:Message-Id:Date; b=JaJOflVRHro1qiOPQf6XpR1rFlO9GgCHKavK9d6ZMMfEJqc2m3PGSyWWvFMqMDxZ8Y1cyD1oZP838q687CU1Agn8RRNt3PUdpe2RBm/LWYlgOhlbX1McNICcT+hO5IhxAvMMkkfpusLeJYHPQrr5FyG6ySPqQpENprje+YN8xWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS1ge+5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS1ge+5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E812C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748350793;
	bh=ki4AeSKIY1miDfTDqer9fAdUTr2D9eG5Fqq3jwOIpCY=;
	h=To:Subject:From:Date:From;
	b=BS1ge+5yk6EpPopgSnrPMwPPKPgYXn32D9Db1DfcgXSMsfBZtPt9Fxf13qQugnyUX
	 UNYTJCpt0fxBEC4/LPWkpPl95li/hYv+oZvZS97ZjIfK8+fgBe31e1NLkbIZTs9exs
	 /9eV3UzFKYszdtTnU2h2N5krUUYgs/lx7FU82944ikU2yZQH6XArLnRfq3j2/neEPB
	 n6X6v19zXn9d0Vfgpy7opAfoEG2dEVFgdEQ2S5Qoe0Yy7PdhAjhhTV6plOJ5i8kesw
	 Na1cTeysrx4zTSA8Iu3o4kXDa1m692InvI8lUP0w0EuG03f7IYEsHWjVt3If3U4ctj
	 sfl9GmJddGJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED98C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835079357.10015.13523877017797957072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cf3bde2cc0ad2383fae0b0a8e96c89b4a9c5a75a9128337315ffbc24e317a0
Date: Tue, 27 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748350793
