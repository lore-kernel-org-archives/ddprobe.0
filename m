Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074FE288D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768462434; cv=none; b=Qe4g9YFBw+5gu+yAKeXc77Rr27pmR6nYRDYejKSkF5uCkrJp1ZtJOr+rUIF1N0Euf+bLBR41fNP6C2nh0DQl8NsuNuzoe99llviDiAEWdzolwuvIj8MgD0x5J/fwPeh+TCNLHo8Q585RNk4HDz21pDX9ny1l5DBpzxhlaLFER24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768462434; c=relaxed/simple;
	bh=1kzca8UGAhPDQ/ykumUGR/cZr6SnbL6AMX7ukwxVNhA=;
	h=To:Subject:From:Message-Id:Date; b=QOkpuqr28olelNaSoHVRQAQKhuoM51G00MLbmUoK+Q76y6BZQbCmUBQpbc5jsq74aa7s5WWS1NP+7QkZ2zh/EmhuXt8i3Jrv3r6OdTckcqJY19Uqmo0RtujkJ8F0TnB/V8VgLC+D0QOjaAsS03PCVEuG+TRGV+tKgNJMDQWCDR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDf93XMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDf93XMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA6AC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768462433;
	bh=1kzca8UGAhPDQ/ykumUGR/cZr6SnbL6AMX7ukwxVNhA=;
	h=To:Subject:From:Date:From;
	b=XDf93XMXgOJeaW5qj8ELV6ocB5EqGwOuXGE5c4NgU0Vf2i+I7G7ILYE1j5D7ZP6Do
	 v8WnXsDagppr2z0jBPiO2Z8bAW9CK1TkR97XEuJ+wn1VXJaTlUtcW8bWWXGsrK7Caw
	 KZqCH9uaYiGLS6gV9SZCzy21CtNyXNymQ5KH5O+DuZWepcJp2ldmZGJavvHtZQSsEF
	 pcezGi7OaiN2hiUh7Je36ns6cXVNvM1D6WtjoC8N7xbh5Qyi4cDUHhs2n6lLDURcdM
	 kkXseMiK6uuMOQGnLDv5g3N5oTiCOiLUhGr7jK3VG7C1gk9uRIqSP2vCwJh3Pq/Jo+
	 mf4edtQaMZsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A2D3CC8A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846243357.18025.6398737867039025188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c20de58647851b16b9059ecdb6d51caf414ef05b219568308d1bb095dd5469
Date: Thu, 15 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768462433
