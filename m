Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2123D17A2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764337974; cv=none; b=W+fRqdSYTJoOsIiXAt8S7OjATxRtFM7LBVMr4GvQIj+eDu0uSkJPnIcRkjT2/z4Gpb4EQN75aGRTkWbSGYTb//k6TsLJDX6Xk/fyvKUzp8wlnjCLqLf9gN68re1uUOI++8nGSF93fw0jLzS7bF8qYrk8gSg1YXDLd3qYOZM6P/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764337974; c=relaxed/simple;
	bh=PvjmyO1FjpMHljnWZaDyM1N0BotmZqiEDI1/aNW+SzE=;
	h=To:Subject:From:Message-Id:Date; b=AGOoMqdNOAPP5sRzAjCZqtSG1RJ9Cz8EZlwqINOHIL9Rja3iaw+c0z5JY3CzkeamiddyBXT/xHxYVFapikov261P2Ri7ggLbRucYgugXkrHmGVxMjFz7YauI6lIZgtxjJPA6BYH+0EPf/1Ot659igcHnbsdQs0d5jsxt1A8xW0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjrTsJ3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjrTsJ3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78EFC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764337973;
	bh=PvjmyO1FjpMHljnWZaDyM1N0BotmZqiEDI1/aNW+SzE=;
	h=To:Subject:From:Date:From;
	b=kjrTsJ3eqCmNdCET983Ayv1D/xyF5Y5rU4bfQVbiAKj7s1RD7SzG1WV+g1HYCJnuB
	 2VuxjYMjz5+ihh500B41IdFjjrIyvM/AG0geWpniR6nAlWJICv6UhZbK3NY4ZyXhTi
	 Dnp/ZXgRnD1fmL5xzRo0PVpJOriLDybyIVlD8/Ok4OkUTUldRIWh83dR8JgXyQEwfw
	 n3vbbj/NFrEItWIHb45cAe3xeBkmnAp7mmVfAnbgX8Cnois7j71Z3ZspMdu+DbkdsY
	 HEOEcOmhvcTBxq2i/jIAFOrL7c5+tXT+CN2Ai3z87Gnhz77llTPxD9w5oT74T+W089
	 zbN8Frw7tkQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386ED116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433797358.12804.15301740201085627370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832b3018b571e690049ca242926cbc178283de72582fa27e21e9c26fdb38e89d
Date: Fri, 28 Nov 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764337973
