Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E412DFA3B
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744664394; cv=none; b=G0I8Bnk9Y7zek0KkdLAWO90DF5q8ATSqV09CsvK7fU8IBzWClyy5S1dDHJsWbmbmQeCRQcqQ4s7QTD/GBOv90LP2cmgZQpEzGYRu+owSD7kTpY9hiYJmIUP9z2Kzj9rts0QeOQb+Y22nZgHBenO/+ae68M+a15SlHqNAxhu9vgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744664394; c=relaxed/simple;
	bh=CCs8VdgR7toPORXtoDmuwXzmSYXs38ZmA+2yYBoqEZ8=;
	h=To:Subject:From:Message-Id:Date; b=bv+/mUGJD08//TWgmU7BM8qrILgt7JZj2jqD1mgAKo0yY2YeA1s/JOIuEsM6jaBJlqpLyd4bwiXJsVUHRDQ4CSPCzA+F/RRRX6bPVuZ3rcY+cKmxHC2HWYI0xPLT6RLUCO95NXnZPgXZbKKW7nQLdN3QYVNnV5hkiczgd9Yvr0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6VpP2Tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6VpP2Tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2028C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744664393;
	bh=CCs8VdgR7toPORXtoDmuwXzmSYXs38ZmA+2yYBoqEZ8=;
	h=To:Subject:From:Date:From;
	b=a6VpP2Tbi4HSfy5ZQ5K3n7eJC5B8UppOECLdc5Ah9iQdP7uu/Q/0OHKpppIa3KLeI
	 KWCJdG3yhekRAgk6rOvyvdOABoEZxPpYso8+ijmXHUdH8yMnMKOaDLoz60tCIM3nTZ
	 KmmhcGfEc/29B4P2LCnCSJ8BJNkWCLHCy946VznvbmRi949k/ngsqWMStNmxe9vhEV
	 crPKGe4MUd4DjQqTv3prY8XB6D12OxL729fBQgnayI9hFwX/TE2e8M3jog94X1fJM5
	 WYkHe2lEyGkhYiuXlDMsCAVWZnwXcpfuNKi+cQtQYDwa+3j0v4ojxk1rpb33sYMZsz
	 SyuaB3O8vXgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B6EC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466439364.32556.12974874791502888556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26258cefd5e913634c7263d4a0bd2fe05604832425b66081c56607501d8ef633
Date: Mon, 14 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744664393
