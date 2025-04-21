Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7852110
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223594; cv=none; b=Ikn4wssZPoGbib0MeIWPTz5EDWbw0yALYbbT3QJ1JocbvB+POssXfq9OePhrH5Si4b/HtwdaqNPo0Xk7pSPoArJ6jRQTBqvBl+dFZtpw4lqMK0ILHyxtCMzxoF2pc2dRZy1Xqs0QH4gBRlfQFXaa/fJQVmuLJhbkAjCNXrWsQYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223594; c=relaxed/simple;
	bh=bwkdmak1XgBzC95lEaxQt/wYC0vNBy1aj2uU//PwlFA=;
	h=To:Subject:From:Message-Id:Date; b=tAYPQ5ufLPWqcTUI3QGwXlQ6GDwkoI3EWsKU4b1Q7AT+DLrMsm0Tq+0P2tzegBiOa4x4zAB6Q8mD6WL3X7YrVdjZUSQNq1cdQeaBCP+1jpf4OZeHymLUWbCDdhE0DmSTR5AULNN6CTpaVh48fvLSytZE78yah53TEJc45b9QOBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCbx/ueW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCbx/ueW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E15BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745223593;
	bh=bwkdmak1XgBzC95lEaxQt/wYC0vNBy1aj2uU//PwlFA=;
	h=To:Subject:From:Date:From;
	b=uCbx/ueWRg/O1D3nZyKk5AH1dSCm4kCGCcF3LnWqbDq38QWZgxnDNlpWUGEvOZqek
	 7BNOrknOgjZ9DTysdlIdmN7FEaqvi1fbcHlsB/rZ4fOYdvXmXeSbDMQF3Fl5auBWKB
	 wqDufxtotjdm4SJS1cOzwDHj7SPY15WZCkuKsWHHCaGXp/PzPntAgDYzOrsyZcNSc8
	 0w06ByRcpB7d+U41yuIicd0xOXWZN4oHknf6ZP2kt8jVGYFgUt42ghjiVkT0U7xn9h
	 Iccu7V9aY5rdo43/aBc6HV9EEQK8wFdWWoEf/htuNvm/mMq3jUMcds+SzA1QKcBAWu
	 mgvI6fN76W/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A62C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522359359.18564.8964098577820663127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116715cf7e94bcee852ad94b1229fb6a8a076d327abf9044fe19711acdaebddf
Date: Mon, 21 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745223593
