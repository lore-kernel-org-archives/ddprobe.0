Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2481BEF7D
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744860594; cv=none; b=CQWDImDklphFPrfmayWKbFlrcYTzM98L5HEiDvB7TaQ3xZoQuW6EJfiCQe2bjkqAWprDPCVWc25YafMHj5wCvx9pCMx+nHgzpXV6cKuZELhWOLKJ9nYsRi40MErh7hxONTEz3wZhhxI4awTd4bZjdUt0y6cEqpG3FTBfm59UQso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744860594; c=relaxed/simple;
	bh=QUxzo3igGlyh92z8Vqfa3Btt368R1ThJh4oT9wvRQaw=;
	h=To:Subject:From:Message-Id:Date; b=Z2WZmgPjMZp1O9EXEF2t3Oq/qUya2+9P0K8C0o9hh3RhNzHrBX90PSYsNmWCBzrMBllxcQ0ozAzBwoDalJkvbUHlWdSIb41lcjXccjOtuwCNOEm0LgxEiexBM9t1sCGVWNnaC3ENmtlBnZHMAd4OJU9d6B+4IfUuVZsIENED2ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyxwFMnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyxwFMnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6740C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744860593;
	bh=QUxzo3igGlyh92z8Vqfa3Btt368R1ThJh4oT9wvRQaw=;
	h=To:Subject:From:Date:From;
	b=YyxwFMnZq5v4DMC/XuCTf6WrFdIocSsuDiBWrfofIWHA1HjUN1gzWmmAXcAcNfR3B
	 sbvSV4iiP7JKAZhNERtCVsgm7vRP6ScRAvdPS0MQukwSCQEdvlQ0XYufVqsBm2v4Ks
	 hR0mkxgUDsnOf+UOL9mfNuelxeQJnQoKAVJg3jGG10ktwnzqQ9P7WSjiDThTp+3N1j
	 Zce6YeYB9bJYHugA8HmgSTk2TXtni1e5Mz5d0tpzEX3OnQewRoX4OsCm/063LAenyI
	 xKRQGvbcj9qkJfk+aDwBHYbNRlnHpcn4YeEHw5WkRO4G9NlZ9A0bztvJ7D6iTHo+j/
	 WJEFFNY2MGuPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D30C369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486059360.14340.15819284149628254801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee456705c7d56b939e9cd0de19651ff10bcee6beb6b7ca1908cac68bd215e251
Date: Thu, 17 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744860593
