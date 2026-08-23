Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8B1188596
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787488234; cv=none; b=c9xnwr4fW8wLZI7cjr5IVhgZxHRQKbyfNb38RjBHfNWTaKviSN7IpF9r+z5umdyuN95E/QgjtYEPHqHG0IS1eh3K7s2rqU4b3EjTk4dUWCpVNtGmDzlAwF19tOoTJhH6oXgycMdV8oE/tMAu5mnP3p/rcwq/kaxtZi3hAKXpQxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787488234; c=relaxed/simple;
	bh=jYdcrpfSwQMFuGQIQlR+CuzCLdQ8dthaZy4YgEFgOnY=;
	h=To:Subject:From:Message-Id:Date; b=asWnU+ai0APLgXHswR61M7AKWW/rf/7DujpDLwyhyf5AaORyY5FWfYoIR+YYDalGRv9uNIIq9PanNAnRhf4mG9oCm75pS0lBBAk8Owt50X2WYpJ/wxJRkfNkz/2Ls0tHQubledv88sP9kfenVE93wj5qgFg/gIA8i8Xh2+Xjvw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdlZ6dlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdlZ6dlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD488C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787488233;
	bh=jYdcrpfSwQMFuGQIQlR+CuzCLdQ8dthaZy4YgEFgOnY=;
	h=To:Subject:From:Date:From;
	b=WdlZ6dlDUJT+Qk573r2M/y3AadOX2R5Z3F9UwiJ40Oex/871gZMKZoefikd/enAVa
	 Kc8TY9vqnvgyytz0UKlp6hHHYYJouteXw553usF7uRByg59qPpPFLEw2La/QSBlv47
	 Ut4q6vc3N1SN8v6kKV9BLzXZJ64VCAmDMDNysbDavBTRSssWLlqsK3bC/0vjLKAwBL
	 VSZsasQXb9H+Wdq+oCKZ1YSDVXMZMcmTsFp23usr+M99ROsq3QNpd/XI5k7GRdMiuc
	 Ng52yAFPy93QnQV6uuVsV3hgj5n6CQHfhxWiXs5Sk99g9e1o48jqDQIbyAOFHzMoUl
	 23NvV9q9D5yKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA223C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748823368.30750.14588432863584877639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790944e3fa44b5cfde9899c584e99ac995c7bc6cd03474a5f984b5001881b169
Date: Sun, 23 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787488233
