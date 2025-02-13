Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D44206F31
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739426334; cv=none; b=ftcEEeKwPMH7Lj4erw4dczWJWmCa3VF6DjlnR2lsxz42AJ2ZqqXmE+KNnrPBAw5fXODRoIZdvlsWsvIC7uXxSM/LfKgRmDO+jamR89+AvhZvaBvo2Nz0NXcLmoXPHLc7liGp/Kssj8FSu1gimf05v3G/31Qhn4X+S95J68ddRQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739426334; c=relaxed/simple;
	bh=Q1HpVPjYmyAm3vjTs1eLyBYrqO3g1cOmu3zpalWKLQM=;
	h=To:Subject:From:Message-Id:Date; b=FOi3ChvnuN4AlU7PchFuhC/GE6QGP9OuczcxCGkq6fiSGuGoKG4xmfR7JOeorN5xpbkFVJvnRlk2SkCVQ4RaQhh5tK5Q8jGsXTCDdhuSmGOqK31bbxIiqpJQ7O7zm4LcGIbk8SkXeNuYr9vHjzKjQ/RqbmP0tWUSptIx187v0P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/ZJ8RvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/ZJ8RvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF01BC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739426333;
	bh=Q1HpVPjYmyAm3vjTs1eLyBYrqO3g1cOmu3zpalWKLQM=;
	h=To:Subject:From:Date:From;
	b=X/ZJ8RvK1e1sNmjCGFTAwa5HwSwnSSR9QbShnVxeRvOg/6ny+2CogoguJ3CxVwjPs
	 KkJey9a2jBwez4YDdLslgAO3JXYgZ0ifeqmS6RclX4q4AF0L86ozruRhFxrL/70JkV
	 fcp3Kx8nS+NNL/Scr+T6LfFB6z3++d4KGGzNYumQ9FpVj/6ERp2vg8p4XkiLSQUfjx
	 MAhJUchR111tatmWDWuUeRHeHyvBfq/Uj7YFQ9AzWpmR0JsdAXJ35v+5LR/URDBj5D
	 OfFbLsuW/5irnVKdE+hqN3NV+4BYn1hSnLXIaFzpyU0L1rGOFGfRgfTNj+MHY6uy4E
	 6FIQkTSRnR3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A278C021A9
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173942633360.24654.10070459089624744144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60115e5d182b676818657d17b32bf41c25c377bf6ec108e0e47199e494462b46
Date: Thu, 13 Feb 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739426333
