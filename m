Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD4BA3C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705713496; cv=none; b=NpXHgy0qL9lOlU7ePU+Di4C5VhxWu0OvXoPPw4yqNLgPnWiG5pNAb30fZ3j2WEJW22/8zH2x83wuUXEEViSWUYTXVQyC8IlbrMIJDMW2a6dV7dhfGnAlh6ByB4di1jvvBD00D4WyAx0Kwj3oQOsOzPA9erhOIFayz1L1D0K02ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705713496; c=relaxed/simple;
	bh=4KmoOgR65UQwfyd4L/fBvLYWv8Q/rShYJeJ0Dl6Xs5E=;
	h=To:Subject:From:Message-Id:Date; b=DkzUsPoeKjhbfMpv8IzL5f6iIycx9+B0OPLk5LTNXFxxQK9u/wG/snAH8lqpxMSAkdS1hm7pPhkG+wfj0x05eYdYyCMsKLgtIwisU5m5c1zm2z300NyquMYfWEVYiJmiHFfld30nbwVVJnYqQxTUntlF1SeJ36ldG5v87aqC/ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hD98XWVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hD98XWVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716D8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705713496;
	bh=4KmoOgR65UQwfyd4L/fBvLYWv8Q/rShYJeJ0Dl6Xs5E=;
	h=To:Subject:From:Date:From;
	b=hD98XWVI/oDd0AWusZ5TxjHjYiabV610aCCDHt5XurobPb+P/tKjPTD3OJASv4NPw
	 yd4SnAapmaqNGTNS8wNSZXWRqk3z/pOsJe9kekCAikX6A2EcYwzz0UwVYj+jGYv4aJ
	 YOaHKyX5PQdK0+KDLkVIMIfXQMRdBrK/EZ7cFhTA3vIOJcxo6PJDKP6PrDTifpG4Nr
	 n9owEBD2Ui6NojtifiUnOXfPYOTT8BevyfkuZX6aT85Cye3YPPvj4LdPRo4+p5s+GP
	 Pq6JA10TENfUt9LzCtVjJzC/W9Y9wwmmSwxmwt4qIzy/QCG+dH8x7ljzOdrXWltE1Q
	 I7WgEUVTY6vyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE9BC4725D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170571349636.26296.15625792060988549832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9887414f4a71a069680483f02ef461169420730bf99b22337432c9861a6eff
Date: Sat, 20 Jan 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705713496
