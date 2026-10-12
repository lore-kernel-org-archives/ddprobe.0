Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316DF1F94F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791784834; cv=none; b=dXfCCmQZKinZ4zPzOa9q9foe94D5AfVaZjzmzDM2Mc6LecOBirAdHm6IepmceeE0xqJtQGqU8wzegmjsN18xEVs9wqNc5C9eY+iBY+t5ge5n9cCDX/wcw0M3KqcAzUiUDu0SBaIeXlYpMQF2DiXrnyZtzjKphK9rWUFxV1Z9OW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791784834; c=relaxed/simple;
	bh=+/VnfGZy5TvX65y/9yKDyY/ONSehxCAT06ouUnnx8tA=;
	h=To:Subject:From:Message-Id:Date; b=IaFCGbvtmZ5/hi9odg9ERaQIfW0br21CQOsS7T+Dg0IwR0gp8+YvcIuT4FOOD4D9CzXOeMr0toK+U/tLgVTpuCWzjIU8SP2hn/TkQdvumKu2AG9u6Xeq31of8M/6wXuPaJXxlUVpVO+hmEm3AVyaSqVTd+JoGhU7LS1NKVzRrwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGfMVkHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGfMVkHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D350EC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791784833;
	bh=+/VnfGZy5TvX65y/9yKDyY/ONSehxCAT06ouUnnx8tA=;
	h=To:Subject:From:Date:From;
	b=KGfMVkHIURgMZPVpJbCBsnfiil9HRod/zPTrTjaStTGOJBe41kHRjBqn1SBb3Uw0Z
	 JxFw4zhq9rRWH3jmyFM9fD/B4pVkLXTcAK0eh3ftPk88hQdxIbegyxp39XKsAQV29v
	 TT/ducEB/78B7g2r/oF3uIpjzKaLeu1lFuMrU5BCjHW3QHtPxTXbBQLtstgXNSzafz
	 rEDADdbE1NsamPA38Yfh38Qs3EqCi9ldba7kvBxsiZL7JuIgEYotj3NqdpEFjL9zWI
	 rx+O7FgzEMQQ5YgbiX+NHFvSkQe1IXe5DRQV9/7ypNB6pPFxRwqOaQ6UsRZ0xzmZ4F
	 crAKsacL6O5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC90CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178483370.5390.3613651268171464469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a613dccef804fa3872a5649e39aea5820329965bd1ab12252e3721037b558f3a
Date: Mon, 12 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791784833
