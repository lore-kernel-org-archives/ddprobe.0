Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6573810E4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719884723; cv=none; b=Ow1kgQ6IpahUKbYEacgt+rNdAr7T8BZSCd14EtPgRmIa8zUncjuYS5ln8dweX3EWJYlvxV4mtF41ie5horgZcjlpW9P83659D6pJBm6EfqWF5619jmQTj+TzkgBybXKXxl4jvFhA3uI8HoH0ywRNnwP6JIv8OUdmpj4fB/NDpjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719884723; c=relaxed/simple;
	bh=2KPIv6FrXLo7Rm2tWaPLqIHiwqJTlq6MTdi0aASY5Kw=;
	h=To:Subject:From:Message-Id:Date; b=fO6/568nmcEj0MK89+x284vDAOxMbVLQ1xiE4CrVFQJdpaQV6oSM/v9j7chpaNdGgAel4hN2XxinDQWDFGAv5ezgzDClVakx18T1LK22Deuj5ZSDiB5mDHv/r4uXVDYgYEOGSgg08ZcToqEhZgfZVLbHVZ6hz/KdWBOPpZUa8gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfWKcr7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfWKcr7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D634EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719884722;
	bh=2KPIv6FrXLo7Rm2tWaPLqIHiwqJTlq6MTdi0aASY5Kw=;
	h=To:Subject:From:Date:From;
	b=KfWKcr7YQTIq100uWFFdIi4jtVtlr+RFC8H+XIS0mF02JL/bQwsyK6EGVKH266B+h
	 wg+mrSWQJUWrjuiToDeIA5+aPGT92fOEAcyxBbkW/VcwGwlYKPKT4bZkodvkbkbkrR
	 2fRpZEZPx5yqsx1dBdijGm2NLSS4cGYGVV59njDSDM1ZM/uQmuPtg5oD4XaMXMxf8b
	 w56lcd54sTi4rnlB8bqbqKBnzDyEfDMLdJOYIw7HHNAxkRRwkaD/5bR8qi9/5HCJpL
	 AgrUnMr2k/sMWfXDaIy3pWJTkJmpvGGxs7KL3/MxDKomDLPk/zpjzZ51GBqPpxHyzh
	 kFQ4JhxLgsKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1E4C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988472277.14182.479859365887798373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a49027849dabe798eff208b3977e5b1d6ea62de27388228ee972022e35e7de
Date: Tue, 02 Jul 2024 01:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719884722
