Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5723B2BB
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715626343; cv=none; b=QM9CKRIFP+c7z+Xd5F8AVvcKbpdiVXTYHMyIbpQmZ5x6sLCmPY4F3TYjUhAbOoL5/rbRWIzIn1IClY/6aQr7fWqzXuqTP3AnfX7+1oBv6DetknV7NwoXP5PyxJEy2FmC/pEm2EFhqE7WU41M6JDFovEI1bLwdc/ednlfSDpzsm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715626343; c=relaxed/simple;
	bh=Oo1o6rH9Yj95K1RrVSiK9aTZTyahLHy42aDlVx+Y8ds=;
	h=To:Subject:From:Message-Id:Date; b=lg/U/3cR1LRTc/xkHM5XeUh67SPi5EVPFGVN/t24re6VNhdt00cXLuPXjdjElNsESZXlAo2m6wuYvI4l2HzzOVB0+K9up5y/K9XznXEaJ/Di4e9gcJZkGmFcqunrBAdHKyRrswDeQmpQvYwYHYiNNGTZvQguCzjtnylCm87NEpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITQM9LdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITQM9LdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DFCC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715626342;
	bh=Oo1o6rH9Yj95K1RrVSiK9aTZTyahLHy42aDlVx+Y8ds=;
	h=To:Subject:From:Date:From;
	b=ITQM9LdQNEqBqvHLwdTcfqKlccwgrGk1xWNM+fGueM5W43vkBXec/TA46Lum/YHNC
	 AxsQYaeVYBcFcD8VrS8ZdvUvyzItt+n38pXrbm96h5BUYmu2feywozJ7zrwNaq1d+m
	 mI3ttt7Etvqa0tHtZuzxsXPxrQ2PfgcEhmI6sPkQv+mjDI0SXoT+zvdjJzrw4nZV/b
	 dMIfMlqlWKC22Qj+NZ4ZSQd+vAvMEOmh7Ufnl8Eb+4KyzFjiZP64O04Q7d8Fl7JopK
	 FFN4DAgkfQuTrjTkjjZG+yOT2SAQUCaFvyi1rOidwTDgfMQDAxnkYpMSC4Hb1dp5hb
	 24u2n4zlfoErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF26EC25B74
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562634276.24905.16446385501205385787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb6cd9940ed9badd9755828aa36a99631e752278417138b5dfdc73a1d25c6dd
Date: Mon, 13 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715626342
