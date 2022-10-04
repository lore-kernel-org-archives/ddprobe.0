Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D15442A
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766F6C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664920853;
	bh=TRJSLu/MaZ6P5xzWOvfUnhFlJFg84FKanhDvsERMg+w=;
	h=To:Subject:From:Date:From;
	b=eWRG5JOrhk7Pf7qIEqPGc5Q0JFL2vD/txN64R88LiNjSbulUpSmhTXwbS2WAq1q2p
	 A223QPNu9vnamVYcd52VBkqoUuNgGhiV/uSddquyKLYI0/hQiBTrkMLzyXXS7sC2hn
	 J0gPwdiZ67j8G2EngZz/IIdxN6jAoFuNLJ8UD+QdrwqlbzmqbnOQcC7Dg/3n1R39X3
	 P+ITdpkFdfHSmMnwHmvihFAWKjaF+FeoHFmKiR9UjmOyUI7YCZjtEYxFHnq4ArDOjJ
	 219hZE5SSWe9d54ScF4Opp6XhwmohNwmNJgZthp0JnZrpiG3QAl4SGRYMZaROvh73y
	 VFMdD5m36AHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B15EC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492085335.7450.5099586071434383636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d30ddec16714137617fcf4738106a4f39be754179026c396c65e9ea9916f49
Date: Tue, 04 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664920853
