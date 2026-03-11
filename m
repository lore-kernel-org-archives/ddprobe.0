Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0972E34753B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773209694; cv=none; b=nY//2BWkCykd3FLpUOauVd6wRFl01UO0xHcrFT07WoBONFfDWUtvQ1DARipdWHDq77MasZZQhVcHvLXvG1XqDtTpFdjen2pzdvFx+xUIE+onLGz15BAQkmwXcvv8mydh1+L2iK4WJHHjrGl5GJamRu5m9ybx0HbQuCGWqP1Fnyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773209694; c=relaxed/simple;
	bh=cspYbUm5vFZ5ByUPflBAdxnxOKF/EtAcroDajJVzUN0=;
	h=To:Subject:From:Message-Id:Date; b=ATlgXsG4ZXkpWjzatHZ0ogz5g/vvaWQa9UqanKhC+Z72Km27WKfJZL7u8ZgN9Rm0zvELPPdnIq+8z4ZSEKhmmdHlUwK1NN5qYsf55J4G51Gg3Ybry6eGgIuEjqRrUW3fdgXzUDFjMNJ9SERNABeGswY7lGuweLV6RlZAo6AjY5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKxVmJ/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKxVmJ/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BEC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773209693;
	bh=cspYbUm5vFZ5ByUPflBAdxnxOKF/EtAcroDajJVzUN0=;
	h=To:Subject:From:Date:From;
	b=PKxVmJ/ThYOl+R9zyzwx+y7lRWDYpRRzqCTYriLu0VrGWnpB34OifILNRTy5aGiT/
	 UjBAudobZjDo3kUSdGlxG+VhrZAmtPTvQJ8BK8R1uCj6amp63heh/WpY6cEcuMouy0
	 qVMmrsNic+OYUKsX342ZIqUxuWyuqjgiddl8HyHVr/3Dpg/H51aBxzLL2Kwqc2nSYN
	 xNX3bDxO32p3eqCJ+fAiR8WJWxgNdj58Ov8QmSIiyLA83y/jyYHwWakZYx9mFHguDd
	 VfSjB3D8o/5SkqeawxbXknZj5Y1HaYI4TwbFLJR9wmnf6bjXfwhT4+XkZmeY7r4pkL
	 KeqfRx06tUmTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6BFD2D9D
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320969357.7493.7698627448287354300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905f983b3f4ff918f64df4e9fc873b02fb2eebd83c2d81de848ff0073be8ddfd
Date: Wed, 11 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773209693
