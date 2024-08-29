Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A2C4D8C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724910354; cv=none; b=td2uGJNDDQ8p/c/a4nM/S/Ihk/19BBg3097b15UC90bYu+3uctmJggSO9t91+r2Qw3YqbcJ+czz37vvc1O4Ne2kLneV3RuROlUIib1YroP8C2oPX1lXF/Abl5nA+DZlRReGcMQ8ejPKOZZQ/bY8BSxML4ifbBBWW8HoOGksu4JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724910354; c=relaxed/simple;
	bh=OUbR+LQRYwlISe5aLRmvWn1jcxRERGset7Yraip7VcQ=;
	h=To:Subject:From:Message-Id:Date; b=WiP6I9eLdRn2srqQuzJvmr3yrlSX1/kBndNQqPwT5d9YZNKQ9LsuWw2YuiFyPDqRbiXv6bMH12Gr3qluPuH16dvIbUJHk9t4JuzEZajlMLDRz7J6jAgA06oiu4yIVvAYS6vPAI4u/w7b23aJa+B2hF3fI36obDK5JrK7nJkyoTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oy/mcnsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oy/mcnsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A87C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724910353;
	bh=OUbR+LQRYwlISe5aLRmvWn1jcxRERGset7Yraip7VcQ=;
	h=To:Subject:From:Date:From;
	b=oy/mcnsxz/dAlsxc2ZHPEH44GcmiOvKXZVrn5+E4q4JEh7qZlOXlRDHmgHvu9K3hn
	 Gqpn/WB1LF/GVRGXG24BgutLynz2Wj485Wnr7XU4qAgu8Q9SWwH1PsF8agNn23wgVM
	 DfHiZ+/M3lJf4DTOtXR0SZO8EiPBObia1UJYwgwIwll0TdjHljbfvmK3HRaPIOhLuj
	 bQNzbNYMLVgkOM77yvHF60IIzUfSPWfwwzhV53wkxiE6sWF2RRks6vu6hneymgvoXi
	 f7ggzTyCCQGCyzjPwwLbVlhJo157kIHevqSC6PnDGtlrUPSjwoZ5qNbJZg0ma0I/xB
	 +xYZgBmmhf6+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0D4C7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491035360.23189.13580134874259767224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8188b358f0ad333c00abf627b92316551da4c601dd57d69395e79102e54f762a
Date: Thu, 29 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724910353
