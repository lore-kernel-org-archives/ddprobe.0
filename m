Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38523125B2
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747099794; cv=none; b=lXcVzNQ8VlLybT14l3h6C8hl0cICMT2jjNKgDRs7wzH8WgqAP9IxWtmk9eL33GCWlC8jJ7zxy67Bfw3AlJ15OePk4yK4IJjL2nhmVNchKNDUiSDDOG7NwzP2fW8Uy1w4n4RD8t2cr+ELLPg4v9vOYjWz14EZKo/gXXA/a56OKE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747099794; c=relaxed/simple;
	bh=PwOuPZpl/icSgDlM8MKB3Tr00rfGRwAq4jKMlGxndCo=;
	h=To:Subject:From:Message-Id:Date; b=kIk5E5DwI2REKpzk324vxtZqFidjvmow88rF9/p3VldjuAt47UfniQiZs7q2Mrb67iXysZtXHfcfP+uPH/jslFCYEuz11Px/RtEAfzssgUQcc2KZxJAlWIgXDXvU/536KDLgfWVwpPdPfXg5xDqyW/UzSAa+w1pa1u5VLrQ8aXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8HW0Njf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8HW0Njf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0174C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747099793;
	bh=PwOuPZpl/icSgDlM8MKB3Tr00rfGRwAq4jKMlGxndCo=;
	h=To:Subject:From:Date:From;
	b=o8HW0NjfF7vY4xlfbFbAPhVDG99WYtb6qru5Jyg0owy8zNfrgH/USKYxQbdUeErFb
	 O0db24kXpV8drDkn+wICvCeNPqEIEAOmcOqyoIuNLtQKzpKjmTmWPihEv6fAQ2mdHR
	 6GxuhK9TLB86e2nR3Uuj5OvwHoeTw4IzxzmMKF6GjhjMv4UJBevGbOY7VqadryqBc5
	 ObHuRhtn4k2NYc/aFqK3GFrpzI7xH5htA7n/lxT/epSqHUjBct/x5qfWWcV7ByPeu0
	 zcU+eHeAR1ahMXbzLBSaa2kDdIIYfmkb9tY2snZfMtEGGFP9q24ReYUffPwVcEJIzK
	 uoWTiFzCUY3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E141C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709979357.25570.359926952553745120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd07bf8a310b629cd62325f9ea1890ab52acea9285bbcefcceda2ec79860578
Date: Tue, 13 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747099793
