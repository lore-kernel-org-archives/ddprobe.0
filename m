Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FB042AB7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728403554; cv=none; b=IxbfY7bYcw+S3sQNogU6JbkeJCYQ89TmUgXO0/UyrP6ltEg8zxH/83xp6y6AxGdwpQnkt6t5sCVJGgBAmRzFyfb5FyLnuFo3NRl8gwp3aO4j8nY3OOGDxGmxAiFBIrhqJi9hPzwGC334DWxZSezglDW+syxZHmol4ydmoOZf51M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728403554; c=relaxed/simple;
	bh=ytniTCC4aLBOPza+cGpDQiR/SCvfL6X6CfRTpzS7Jpo=;
	h=To:Subject:From:Message-Id:Date; b=N+8S5ewBckSa6nkWK7k2VpJOhLviFfMDi7inEZSPcNdoPA5hCNHUzrKULBqn8bbicJ0KxIhuvAIWUXTJNg/AiiyPm9EY5IM2OYUpI35L7MFqzuEbBVye1dwgcg0XLdEL+zKOi+PPsZzgM0RUSPocoW4dlRKv6mE6T4ZH1E+h0ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZiH6z7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZiH6z7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1244C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728403553;
	bh=ytniTCC4aLBOPza+cGpDQiR/SCvfL6X6CfRTpzS7Jpo=;
	h=To:Subject:From:Date:From;
	b=OZiH6z7FEF5cWzW2bliAzl+5uXNJSX+SPSEBVuZZ6gjJSQG0PimUvOdIuGfRTXGCG
	 wv8WiSsLRFBepMYyYlJH1mv75qGMvsXNMAINfnmF5ImlFYcvjV8tHXFVo8dw+UvDdL
	 1Xfci79SO9Xsv2eCOrOddeylVncRKM2yHdxpy3jUSf+gSwk0OcSJU2sT9z71wYQ7lg
	 V0soMU+zIsO05F7e7/qX7ziXtTxKiCww9ls3d5c5sWHaDsS6e05itVpHBhz1/SMuE2
	 SpsHdzA7Y4mq8yQbA6EeF6OEIo6JNR/fn1e9RAqFlRanA82ThiDe5OvgIwVzKGeNRL
	 z508MThZm/XLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C65CEFC21
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840355361.10296.6324918223484263090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f96a22750bdb36928420fab6976aa25958864b6070ce51df3e0b877ade0302
Date: Tue, 08 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728403553
