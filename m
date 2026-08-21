Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6564F3EF64A
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787338834; cv=none; b=dAI2IzzkgkPErKhyZtodB4G3QyOShYiClC/+3dG08ATd4aM8b4TMb4QyYoVDCgf+mUbxpd7MkqJbd9W/v1rdlOZFn62SnpZiedFYtK5b8SzcxRR7BXY3eWsBBPT4XORjUkkOFmqrdBT0q/HqGg45UZRMrXwn0yjZW5pIfbRlsvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787338834; c=relaxed/simple;
	bh=jevC9jhrPcRpkCLkQUflbsP2S7I9T4shzaewK0KwW1M=;
	h=To:Subject:From:Message-Id:Date; b=kX0V8tvvtBQEVmBAUzjV3mTesPOKVJNoipc6IN+tjsS8XyIQ/Yeam0/7F/6sfRz/IALSPxMqKpmZAJznr2xi7UEA7Fts+QD/EPQMkVLg/aA58448VqRUNlAXJc0DuEDsBvNVwpsJGDxdncyXwNPFpD3tYfLm/NqOgn9l8c/QQOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqWs7W8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqWs7W8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA61DC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787338833;
	bh=jevC9jhrPcRpkCLkQUflbsP2S7I9T4shzaewK0KwW1M=;
	h=To:Subject:From:Date:From;
	b=BqWs7W8LymM+cLJpaFHkb74SwaE+sfE6pzOnC7p6l5dw7F7sYNqGWQDRMhYVFE4lL
	 IlC/K2ih7Ihw0YNZbS2Wha/FKf+TWuRRIdKbrR1eb3win4/Dyk2ARQovMUDfHWd6Jr
	 2o6r3M9PF9oakiKDVn5nOsZq19pIJM7AX82VduIDtp2ZxKD4wponNAWkrx1Wk3+e10
	 UQqPFe7GQHgk2TUiHxyhbpj0HAwgHZX6L0jFjuQCydonEkvSFY/oHx4Xdp4Voiq6jv
	 ebAJOmTHOef0kzafMGd1d1KEX4hkeMsUG+GkeiBt3FroDnO6CH5ZBXlgqKXPW3CPcO
	 d/tTxTjD9FxzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF987C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733883369.21968.3190263063858559134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00cf0129852b0d273ab06e931a6c2c08c122b38b75e83244911d9a7a2820865
Date: Fri, 21 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787338833
