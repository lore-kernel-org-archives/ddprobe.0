Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255C2F9C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks4xjAK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D425C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699085896;
	bh=gn7k8q0BFxMpUEVSw+x+zdOmAZq9Z5Y2O0Q6Ne5BfRE=;
	h=To:Subject:From:Date:From;
	b=ks4xjAK0HzyFK+Pd7hZ3lxq9hIWpo5yTZxBP9iNknzL+xrGz/rGXUym5ZLwH6Zrgm
	 tfMBSoD/ef2txHIf+iORAOZlwBzIyl1UKtZaBLdkseuaRKr3Q4PC0SYDt0ka9JU+Iq
	 OFnuqz6C+ADiyrok9QX/LDjObmHheeRh/ZJQkMH3wgaelBFm5q3z3LcAW6TxRzyo+y
	 juZPqY6TVuAKq0A/B+j6slbxN/UEDqZtVLFk6XIe3GrmPCeJQMau01OIY8BpfJ7sri
	 QExhF1zB/KP2cNwiGXXDYY2EmHIYEwCpT0OaKF1QHuGtjmBHenuxqu/eUQ5vvlgeSI
	 U7KI32KrUD2fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF81C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169908589640.8911.3348467428400311807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5bc6caf2266c89327107380e4e205115e428605570e4542d237755dff2a089
Date: Sat, 04 Nov 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699085896
