Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E97F25333F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787838634; cv=none; b=JlHEOiLdqD3g+ycKKuc9tFf7r9eqW4vK+gfx9KgXgaH+V+ghQ9tKy5/ed7wHRFc9KDnXekfGIQUyVWcfuUgwmiJtXQAfhHL7POJfDxcXnUiXRWlPxWGUJ0T4HJGJ/e81F5DyedXb2ve8xF/W9esDNXrQMOa1M1gWxS3MJYWGCTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787838634; c=relaxed/simple;
	bh=Df72QNLjxXNsL83QI0NtwEBbH9fbtKZp03O54DG9NlQ=;
	h=To:Subject:From:Message-Id:Date; b=EwgZjgvXXQCvHLqg2DQz4R+zQs2Ja04xlGG9IauhLmo42QB6q1ykD384gAdo+LgMoz9Sfl3kP/pqmSyBWCxbfsDo6xmcEuKd6wj04d1XxzRCOlHqRCt815fwdLjAExXa+WhG4Mw6rTySvH7oD93WyfjIiTN0rPm4UGa4k07sabQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6s3Smn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6s3Smn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F6CC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787838633;
	bh=Df72QNLjxXNsL83QI0NtwEBbH9fbtKZp03O54DG9NlQ=;
	h=To:Subject:From:Date:From;
	b=u6s3Smn+VFqDeDG4A5Hg4sl02FJn41M1uafSB/+DgStt/p9xIRnR1NBcodHNrCGuj
	 2i46EZ4X1KP0u9F+jp80GtRlBnz+LhqXMiQVjBvzyXqyBNmdrn02peLmljxXdXYGYd
	 hIqAK2FkMLR/Rmv5n9qAaztypfSiU1peOZRZe815SMWwiEaQjbjmk/+ciHObmb92c0
	 8gSxA912iweau2hH6RGcmNx2TqlwFSInA5mBywuYWNXEQGy6vQdErDVB25/nuobgyP
	 tJbFSnzratq4EwRYjlo6tpdrSUQavD3v2wHvVFzng4O0bJKEIlRuqv0r8jykBL4Nwy
	 WCxLKuUyA7YYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA596C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783863368.24376.5394326507689449298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb34f4521decec99488da7eea3161423fbe10cdac94d68816af680c6b6e0fa1
Date: Thu, 27 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787838633
