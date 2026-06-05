Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499D9282F19
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780626874; cv=none; b=Rv6k8HeSJIHqxim3QTZPVkD3xUn3g5Zps4xIzwWStii2tfCu1y7khfVACBtYbdvClgTzMDDBndx/1ri7bWAPhoHu2lKPx2VKf17kTsDQLI/mFr2pz/RX3B7UgU9c/wqOxEDJmdLnLig9Q3kp5CewVbvNfJMmw98tAmXQm1iAseE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780626874; c=relaxed/simple;
	bh=6QUQra2QBaMh81kCETrJn6rN67qfNCbZ66agYR6sZNQ=;
	h=To:Subject:From:Message-Id:Date; b=bbx82aQ+Ywq77lDAAzhz4Rp/hYyvDTb5hkSfm7LT2V6SkqxJjZ8lATCb5ZprVAAtGXzdLn9PqE20T8FW9S1VN4kif0r/4CH4+ELLPC79DOKAJZGHOhVZy8/ss++Da5zMRb7fxHSjzQS8AwqFoChnYI+INKdL5/Jlr9PeQgWjbW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0oZf9Gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0oZf9Gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EC2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780626873;
	bh=6QUQra2QBaMh81kCETrJn6rN67qfNCbZ66agYR6sZNQ=;
	h=To:Subject:From:Date:From;
	b=P0oZf9GdZIzwwPq6eTcnTvXzCJpLWOH4jebnqTp2aQfhfUUrhwr5Pi4QqIjJf7XgS
	 T7I1Vxv9v6z9h/bqV2irHVzX6l6vJXFRDzVrbrqb8JULCGDT8I9yPr2ATG/nci5gCr
	 /99lDWZQzx2G0Os+TVsSZQoI7ZhqRMUSpy1QUHbBk3Mv9eVSOegzaaY+XllVjRXV6U
	 VF/hFf3Bq2AhwtI8KR7Y/LpMoDJOfrqTF9s5kDudithUV7u74SO2EDkSsMvtfx4OCZ
	 gUYit51wp4iKj/5pzgyy+s8UQ5Ll0Kjy+9ekBm3w04eLUQKoMxwVDqg4dFPxEkyU50
	 ZQW6ApzrYxqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA501CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062687368.16483.18362442165556231548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8336aecb783618ed399cd0ae9531cc30a494fa9b5770d55235579ae23f4e2b5e
Date: Fri, 05 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780626873
