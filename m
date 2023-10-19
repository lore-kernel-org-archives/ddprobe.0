Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DFC19440
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCWz05+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86565C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697758096;
	bh=Y86bifvJGSPyDL9uYFIDk/jt11p5AeRO3pcGfUFfAqM=;
	h=To:Subject:From:Date:From;
	b=JCWz05+6wG0SAPmpF35g/PihImzvMUCmpwKg06eIRiBJpYu5IDb8o+cViqvkLer4D
	 WWVffwWSYnA5l3m1YcTLzqFHK0eUJIif6O+yzi9Kv0LhJBWUwOHLct9PnnhQJlF56C
	 YLBddkhjSLUggCi+ZO17ytasvXu3Dja31a4NpOxEb/KB73jZYt/W8EUMSTSsvvgyFg
	 5YTUTcvlT1s6G7Act6G6YVgP2Zr5csBymIkpb8CK2MQaW61gRAJuXE1RXAz36NLlqM
	 ZMh1QZ3Fcba95GrDXOkPRY07jPfkRs4a8GqsPJmbxNdPwc1YFYvXojZjsEg/U3qlu4
	 +Sun8evqbKi5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680A9C004C0
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169775809641.14489.2088984544333795676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a491f3f27b665241c65f0a505d04882e53e69b84322641ce046a514a5b1be7
Date: Thu, 19 Oct 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697758096
