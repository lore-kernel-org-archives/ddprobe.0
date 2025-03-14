Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521721FDA73
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741950534; cv=none; b=DhPJyYKShpa66hexg6vub7+FqoyFOo2FzinzqLiU+KoA0JQ55jkKWXDc4g1U/0g/kf9K7uw+N2eD4Q4p6jaOYlozh+GPsHjrT0inr3kHeBROaHOC6EOiHXfamVgbGy6FJ/evQa/jnM4zTdlnIWcmT0IkvpXexDlN9RoYivpl46E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741950534; c=relaxed/simple;
	bh=thVqhYYhJhGgHZ1kG35CiK8h3ai7GTyC5JBH/PwUxVE=;
	h=To:Subject:From:Message-Id:Date; b=eF7hK0wxv75snsmxmq6Y56hbHPXXCj+eHzJa8mMzjd8Ydx4VHlxXUhMOjFSSlyo1s8O/yotEDIvykG3Zyjhvdx4PGtpHXCfWCloDyOydhyyhWmKsXmJDHVntAjBEiDfHRG7CW30236MktSIbHYPMq5pRGFzV9uxbHeQ7wzq/sn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xy7AWOv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xy7AWOv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FE6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741950533;
	bh=thVqhYYhJhGgHZ1kG35CiK8h3ai7GTyC5JBH/PwUxVE=;
	h=To:Subject:From:Date:From;
	b=Xy7AWOv6vIxnpo4NBKVmZXdp5n3yZsy2lmOQCxZCM7HGQcZDzsT3i8G24Q7Q+/hne
	 ElzPmVNH3d612wA+zaVfhBqE2mOgeHZYgQlcYA+hpuGtqr2ppZtaSqv6+jJ1BmCsMW
	 q5idqS8OnGX+McDIvfObak8lIa766Vv4hJDkgCkXw1yf6wLKbIT+vYVzE2oPdqVyul
	 jelu+Uv3mIqNoImb5MoqjbOyiV+hmaoGF8dpjAcEGrV1W6mAJa7t+RL0GKeTHTmJcp
	 MZecoHWV7FeMGl6MjELLBz4KVZQYt8/oUs4/+hACygEDgJVYSj04dgN8EB/cYHa58e
	 ilVfJgTckPMXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03C7C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195053364.11576.3576760151404082558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e58e94688d6cdd097370741ec1116fa53d1ceeb545f8bab93fc5ff3ac209b2
Date: Fri, 14 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741950533
