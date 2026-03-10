Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A2A279903
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773116094; cv=none; b=B5TNYHJTcAZLNbopAVZWtNhCvMHNVD91cQrtQBu21I73MReATD2fRYG3PrnnOS4S56UvogFBWUGphqrIHFXOG3tx7zYhp+Mjei3G32leBcXjtLDyxrKSRjsd7cGi8sQFZ92He/Wv6t60gCKymdRBgXqaqUQli7gFmOj9nCJ1aZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773116094; c=relaxed/simple;
	bh=VTtHnfI+emS9sGz4QKmzVR6TlxSmUYoXLhUR8Yb0C7w=;
	h=To:Subject:From:Message-Id:Date; b=aLjmFeYjmoMmzzzwEoxqtBS1vNsJy5XcQfMlhJpuLRto7KsEsGs8fssdFq0HItLv2ApEzNXD/hCA2pK6QK5ZUM1YFm1K5hiXByaIpSstXFY5ubk0Zayq+sqYz7b2Frb4hwonACrZGM1shM++VmmwB9HetvWuwPqURgIiMu2mIc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+DUFX1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+DUFX1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6D5C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773116093;
	bh=VTtHnfI+emS9sGz4QKmzVR6TlxSmUYoXLhUR8Yb0C7w=;
	h=To:Subject:From:Date:From;
	b=g+DUFX1dQtlYsm3/6/r3O38+gUwD53Gb1GcNbZZBJa4asKrmiVwrtXhekn1Bs9eit
	 3Uh3wjcG7CukCslul5RPUbVqj9GrZ0AU2Crlf4Lv/vHKpM1gO30rncNGJG6SWSP/A+
	 oPLShAb6bgcnCbojUU4LsK9uLUvmKd+i8tUWbhzgTLei0sjQtqbNSjWxHNdaUIgnrW
	 OU2OHzZEdlJKrz4L7Kbst7k/x38h+Q7Whv8UTNUyTIuuyWPXUv5DQq8jQrgQLUBhfi
	 DUOHzpJ2QPhPp0U/LSA4tKd6Ri8bHmQ7OTB2Yo2JJQeX5JN8fv21ZW8dcU90egKYdt
	 VDAMdwCl1UCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE11FCC9B2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311609358.21569.14586928263505416487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfefc53d7bf1ae0102e29373bb00ac83e67fe098510e7071b3195bcc8282780
Date: Tue, 10 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773116093
