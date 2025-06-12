Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E1E1F92E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749724794; cv=none; b=ZLnwUtcz5HWLjK14SjYUNpyQIaOTb8LXs6vVnYWRWQiZFlwWK/SPvCAo6qeAUbhNssI+JOwhsIAwtMLNkL1aWs6jeEM4ZIYRudxNjuwTH9wv3iiAL1I6yloxMrn57kIV4rGlUIz+y+busVC2mvQ4rotvTsea64EiR/KXF5ipih8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749724794; c=relaxed/simple;
	bh=21xXlQBlUPTkjy4fCNTAq5HUVwGESy5u5LZi+Ghb38U=;
	h=To:Subject:From:Message-Id:Date; b=LRu26HMnjX6ZvrnrTsIXxRiiDOE6ee4Jl2AXMrfl8jY5Bdeaj/pEIYtBTfn7xXMIbVojsTSU8e7s+ZPEF0A8lX37Z8m1zklfHq0lt/0ZhzcDNWG9UW3/Bx7KuXqz1XRiNOm89rmU2jdJYLhh0zTgyHcXJQq/5GFZoHPTAeGfUBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cehVIuLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cehVIuLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A616AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749724793;
	bh=21xXlQBlUPTkjy4fCNTAq5HUVwGESy5u5LZi+Ghb38U=;
	h=To:Subject:From:Date:From;
	b=cehVIuLfcL+NaZkijhAly8t+m0aNZBZthbuANk9VdvAMJmE2bLxyE9b+FP0huk775
	 noI2vetL5dcqMbyZ7IkVx7OagnPP9k1BbBLywrzcEXPQElFK/85fIpU7a5Qp2rXU3H
	 o7+qb9dqZ+/n4+BJbwLJMVv/Ga47SakD0/KIMBl5RBrm+ydIMa1P+5xhpE+R14+yYi
	 jdppHcdAAbRyz6Dh9imgEqAQgd+/KJgK7zwytKnu91G4XmGXv7MbIcJu7CS1l3etAI
	 Rr19AOGUkgqyv9t1G05glsyRJfxVpzyXt0M463CuPYrqAuSXTQn6pYOcweeKrfdIpb
	 AixKoGGlC2Pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A9C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972479358.1473.12395641913996219610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97280055e14aa966b00fa11b7a0bb4e8523b2c933123559855185c40d7a112d
Date: Thu, 12 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749724793
