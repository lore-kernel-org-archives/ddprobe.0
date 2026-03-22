Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA0422ACEB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774214694; cv=none; b=XVuGeRJ533Dn5mbU1YZsCvu2NS2oEJdkGWGiO5JB5dlYPL//fy/xQlqUJwFoDJUVrZttQsqNqGlwDNM3dFxM7m/f70AcRv5IKk5Ue2NRrOV+Zac+IddTLPpFYG4g5jX2hnE9NiSpuUexPCGBQIVZvEukgGLC8612Tsaj3XKfnwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774214694; c=relaxed/simple;
	bh=3wZasb/21tZt7zVzG2c5HINcwbgmiRLZdZz/s+wH6Lg=;
	h=To:Subject:From:Message-Id:Date; b=bUJbdWSW7iDD5TY95VI0dd0JY6QJne+gckTgaHRWL33v2EbjPrq4PnAc8UGuXi9TKmKKcfSzZvkjEecrro23mE6gLVRYyJbLKIAoqRdu1PkWSa3OVeIyAdWf/kVtJK0DCVVq4LApu6wfGtb6Sfg5BqvEx6fB6prNzJxXPA1ftW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0uXwOQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0uXwOQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5661C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774214693;
	bh=3wZasb/21tZt7zVzG2c5HINcwbgmiRLZdZz/s+wH6Lg=;
	h=To:Subject:From:Date:From;
	b=M0uXwOQLUlNbvYd63hVM/85uE3n+ozBsXbDNpSOvYHViPKzfyxRy8p43TFVz+GGAJ
	 tSYzLi8LZDEZzlMwt/KWcy/xGDlhZ3C3QQZQAO9W2PCDGpnF+yn1+3WrJmNx5drIu1
	 1BQ5fBgIM8u3XUwhMNalFNZS6TB6xGkCVXxE/vDAeWbAXJk1b0L3eAOkkqc3exyAPg
	 f9Jd+TxDB0XKfUrgkB9Ch9fYt4CI6XVknPaAD3lvP1/YOL7XAFVXWXPqAouj/qKDSq
	 SEFVGnJ+WrA2GQ1nkCviaEpbnSDyCmMRHvXJS3lAa71koSuV0oqn5DA//FJRXivSjH
	 W5FBg8ys2bNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EEBD58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421469358.18768.17015752187786844844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3009ec3a8eedfbf3f820dbe975c126a380b2b83cad58c6efc6d10ee912b39add
Date: Sun, 22 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774214693
