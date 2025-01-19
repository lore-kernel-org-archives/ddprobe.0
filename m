Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B7BC2C6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737266754; cv=none; b=SGfRCMhXravVGxWRmQHR/qmzF6H8YbMrXbehuMtXTIfg9EIW0L1+oC7aLB2hEIfY1M2v4VF1N7um52y5zBu1XMbzgwKma6w6dTPToymry61HlovsqxZqvOITf9b9b+EtiJO/KEWccFGc/KohluEBWAh1hd88K+ckwnsFuFxWvbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737266754; c=relaxed/simple;
	bh=cZo15dnBX2QpKwh5PYW8XHVzTBXEgsAoZKhZEQy2O8I=;
	h=To:Subject:From:Message-Id:Date; b=aryuscUl6mNL2Kre5HKkr74+Oe1TG7tE+hKdoMEk+TwjQbtwdJhS+VLWqMrp0TRL+QUYlyPgHqcxSa2S5huhLTWg/+BuC8JxjRQffEi6M6C8ayv7/ryl4pzcsnCJQkUjRs6SM1vBxQqfUAD9o9anu1VvIAXmVZxHPxomtj23nPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2dItUvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2dItUvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F52C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737266753;
	bh=cZo15dnBX2QpKwh5PYW8XHVzTBXEgsAoZKhZEQy2O8I=;
	h=To:Subject:From:Date:From;
	b=Z2dItUvplH/CayEVeiUWpgBdEHX7Df4UfzvW3AQKjIuEK0w2cXf2N+96eCS9h5Kjo
	 Bzqhp5b/ABCF+vn8BEFINx2XoqYWd6WMDhj/vD8GCBHhTPZQS3foWNc8LXQEI66sVt
	 43zDI39uYZLaNMMj8hu2lCotOkb0Feigv0wlwUdle5+cVlN9pFXXkLAYMheYjyhMog
	 miqfY+20wHVpOP9PWK0EuHNFmwSRbjJUUrIJIW2rj5vfyDOyGn68dEXu83dPU775jJ
	 oVLPIYd/eAKXGTmxxlMKQaNH1lPPnwIW4nq/3pSQ7h2qJzfAOT0HqDQm/VnRh8RfJU
	 pgzgolKH7ortQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D08AC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726675362.16737.10004762756018831500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c80aa93bde298ec84c682d3473cfeaaad165edc386754431b5b61c53c841ae6
Date: Sun, 19 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737266753
