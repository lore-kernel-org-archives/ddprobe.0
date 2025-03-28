Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A19DDAD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743145794; cv=none; b=NLeIrLZRzEDbSPGc593UCI7MQkqpxk2Q04YoiMIpeYz/h+4UcMuMfKYNJk1lur6zKDMTLaZnKbCwND9vX3Op45hRfsjkh3XxyHWE+EJtsSYUNQdb0A10QZF3Tcv/6XvqagDmUizr9lMDZWx1WBmiQlsOqwBCI9d1UUCjZHnmOAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743145794; c=relaxed/simple;
	bh=qgpiOYV2mE6dKwXs9zI7je3QgZ0w4alZ0lWMwtqPTqw=;
	h=To:Subject:From:Message-Id:Date; b=KZ6+B0ywzlgomhVsGQ4pVKx4dFrLIcqUNm/J6Y9+BL1yiNPjznALiPC4LojElWP0G7T66DvAWCBSsY/n1zGrF9JCMlYCrTo8UnD5+feU5CzWI1lOwP8lk7ketzl98dw1WkQjt90SgLpsy6iepaaytCzgfXNfSEwaNOTdBBiLtNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqSFrMDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqSFrMDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE466C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743145793;
	bh=qgpiOYV2mE6dKwXs9zI7je3QgZ0w4alZ0lWMwtqPTqw=;
	h=To:Subject:From:Date:From;
	b=GqSFrMDtDXCY+TWfws5fZFYwjsyNiC6Pd3zlJqBn/Jqo1wkpkwCfMzsQjj5sqxVtB
	 rKiesXVsFp0O1BXa//NT2OgLsNHKQrsC669HDUkGhBqFkUth9DhcgM/C0SXMLfzQXk
	 97QbOQgCJ5ldQdtoJHaUtuMCcLLIw88/Xd9EEp8uyrwoWqN1k2i0UVcYDXPCqkeYeb
	 rkFdG+2bRvjZDXDMSlcO8hoynXA5HSb9dWgeJkkbnY1nAPiktUK/IiXGEuAkNa5ihr
	 O9MaCnmZBjFFHqqnx4nUJTB7m11HMPpUkF0CBLzSS0ysNEnWdcUv6yg6EwVUwl0FOl
	 i9MVqPNEsjmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9693DC36010
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314579360.6311.3039815396336392731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fc059bb29f4be70df7940e70473c3779b3fd1bee0793656139a4ef00e2cb92
Date: Fri, 28 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743145793
