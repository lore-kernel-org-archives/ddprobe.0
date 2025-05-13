Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4068A1E991D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747177795; cv=none; b=YRUSvxQOXBABaS7inCY3Hj/DbgA0Dg2hV8NpixrM8gBKu9T57gjnIaCDv1Qn4sI1+REnGd4yIWjJk9sorR9VPCmyJbfeAQV4Blx7Da5zywYCyU5YhUww/yGQD2oBSMZVLG7DeJSk7xk4H8EslaixoowoajPYKovZOB0pJ8Uo6GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747177795; c=relaxed/simple;
	bh=FjEy0Gz+wMKg9MKhLX14Rp70GhXo5z9vmoxiNmLTE94=;
	h=To:Subject:From:Message-Id:Date; b=A1s47FN9DL9u41i76NkVCQ4SptDhU5u+Ucd/69W/8WqvCETUtHcytUwyH5/yCQhN7IkO7iRm5rPt4jtpfngV/atPtmMENkJfEZzTXR+jk2oKq6DTa9QPXRURTvx36K7iiixOiYj22wgvOq7LgkmRVkHNpwVfY491yrXCGXjdI4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyDVg47v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyDVg47v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DD3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747177793;
	bh=FjEy0Gz+wMKg9MKhLX14Rp70GhXo5z9vmoxiNmLTE94=;
	h=To:Subject:From:Date:From;
	b=DyDVg47vouEr4Ewb6qhTryU81+HnkQvNqwvFBZuX/a3mwRaNairpkwAM9Pl6/F7nX
	 Leaf3MPD5Hcwfo+w+HmyErzyive4lFbnL3dtUEbYPJHekx/qYUUoTcfaO2f3zw9rhO
	 5B2VrdQqoP0q6wI2J+POnTM7n4AeqafteT9jB0OxVbaIM4R7hD6yW0sE+D4yl/dL5W
	 DPwk8ij1uwKOgDeZKaVrABbWfvn1IPDUQXoORw2ei3msp4IRmVQXg1t5Cwy12ZZUfH
	 s29uPUBCI/TfRxf138N1u2RojUlT47kPth1tmQOWS4QFmcO/aJZc+lpmS/QAQitKTZ
	 /BStcMBzvAOAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D8CC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717779357.11973.6189738399638088278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230e9e19c825fc2ecdac7fb23030fd63d1868a04dd3d2871e7e6762739f13571
Date: Tue, 13 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747177793
