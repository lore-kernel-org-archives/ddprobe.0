Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072E837FF42
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779396754; cv=none; b=iURlKb65awkuXIdtZgxy8Ha7WImKOSWRtjS1n2BMBWocHtSRyGdLv7XRbdidBKNCxattlp8W4eNJUTbGL7eZWfLNPrKmXh+VXfYxl6z+ISfGOtVwXLkow6sRkyFGEzDWTIk3O1aR0jQQ9h11F3K7mwOHIXAU1Vsgxc5V1Zek9Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779396754; c=relaxed/simple;
	bh=OcaksAZbGtwJ1fQN4vYY8yQToehbOAANp/iakt8f+aA=;
	h=To:Subject:From:Message-Id:Date; b=aXTuWyAHKmsT57GwdJ/J8LIm6+q9o4WgAsXvOBFHEdiY4U7A2Ims60UojGHu5ls0t90bN2ivt/XVuDiIiAQ3Oosx2gTXp0e0OMF4iIKZXZR0QLW1LLLJm6y1UjnzZ02Rj7ZrTrqIdXN0Bd5Hfj6lUvfhINSh5iO6hfcBX6QFDqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gx45Ig0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gx45Ig0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F7BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779396753;
	bh=OcaksAZbGtwJ1fQN4vYY8yQToehbOAANp/iakt8f+aA=;
	h=To:Subject:From:Date:From;
	b=Gx45Ig0u9XZM7997jtzRVQebk1PwA7oAhCGmLAQjvr3MrZcwcrADLAmajaRA9ZeW/
	 1S+0w4Sn/zv7N2Dqwa3k04Z3/DQFVnC3R2ZcK74KdO3x4o5STiAJ7iVFyrrYEBlVm7
	 gSbRtnWiAYvHvbIjD/BMyXWI7w7cWCjglsrigvjl+/YFrtUAyQSj5IV718eVCrSlij
	 JxQ7aYOnrIwHDganljYwx/nSlC2LnFSUMd0RNaXRfA/zjDLbNHI+uVLYNEGCZp3wwl
	 xSjcBvb17HRJ6P8AA2BKMhg7/mTrS025Dwd4Ajnk+eF4ex6ULZwAe5x2gGWi2O15tE
	 R5Fazw8ON691g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87FCCD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939675368.2720.8163995327803612994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56684402ba4d6fc6da0ef60cca422ac5691b86708b65300a14b3771a789c94c5
Date: Thu, 21 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779396753
