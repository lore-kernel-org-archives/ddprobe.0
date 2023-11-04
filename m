Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F441C3D
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGyvYl8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E9BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699068496;
	bh=2jZT5OWnZdJbET0/o1oMXsDSh49q9rF6rH7Qb0Yf8Qo=;
	h=To:Subject:From:Date:From;
	b=uGyvYl8myYK6DP5YrpxUfumvFKmyIDzH8Fkjg+h17yQ/bLGp0rfuFacA5dr98vWoj
	 kRrbuiSCM7FvI7gWKgkj4qDWS/R0WxZ5bXAzNjY4VPwGJDoXVEui71HW5oN3s7xc9R
	 wBp/cB/Uls6SgxbsqPLdTaIA9lSUARnZmhs1GrdED28ORyHPRJHcldR135nf7bABFl
	 N0bv0F3ofLlllorEcQOAoghTl4xUXkWuWW46iy84sXjKpdZEHwEwalTU6Nm9j/nHOW
	 sIPcu/UPR15IpmuG3IaqUKl0NYy5sLVRyeqtqf3gc+KJk3aE0PBD+zF4w0axi4u12r
	 xku9IEdyMmhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED03C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169906849638.20220.11307719480315678695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d729920ff5274df505ed82d75ef8876977def2ec4e2101d9170fb073ccb47f
Date: Sat, 04 Nov 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699068496
