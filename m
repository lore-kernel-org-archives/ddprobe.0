Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048F919BBD
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9IYX0KF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805E1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699709296;
	bh=MxmZxDFanesfNROqslbI0mL2PsxXKvrgFBFEJPxnm28=;
	h=To:Subject:From:Date:From;
	b=t9IYX0KF71E5gpTJFeh9l09RlKqNJsXos0OB5wijqIJL/YKVn8kZLjV6AuqKFHyIH
	 XYNGXt1DZreBsF+vjeI7YdjyXnoGdxdI2/u4dkzfZ1vcGMYrGzD+9rEBDBd99ba42K
	 si22ehF4vhzkkfjSori35r6mhRM/+vZD+r8R7imHwkR1+f/s54MUiXFxoANChp6Zpp
	 miwoJ6fIB1HBvOPc7VZUv6F3Jb0TaLIuKvDH+DCv67V+CPGRkZvPXt1sIPFImrQZtu
	 rQNA3OvoMv/5w8F0tD7xI4fML5z+jD8kEtACj64/69HBza/nQpuKF+hW2/MHDxH/2L
	 vUCM1kXVliMCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64074C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970929639.12557.11955807144990104788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fad58641b85b82115bd83f4b8d95ab2a2adbf611cacf40c678273736b9b9c9
Date: Sat, 11 Nov 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699709296
