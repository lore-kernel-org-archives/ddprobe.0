Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3C81632E7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770791694; cv=none; b=hiIxpGNh86ZkL1KBsVl9EK8MtTEyWo2PO0VB9XsL6ayRIT2EmsIP5Z/InWigqm/ljKaGGwC7i/nBDILfRNpMwCbHW+er4kqKh6m+ZE1Yzqtb651AhflQ8VTfHZdCZ6x36d3cpY6LkIg1oRvzU6rG/4P+ss4Wxl/x+HJjAfsTVto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770791694; c=relaxed/simple;
	bh=UCO7K3/qJb6CEzhLR143e02rDgrX1H43Ibht0/W0tyw=;
	h=To:Subject:From:Message-Id:Date; b=ji8x4FF1yD8OUwb3Hro4q4HvHjn123IyHfIXBNehFy99f+eMGlnu3P0dkFeBLdIQmNHHhZC+L4DRlUpWq4wigUJloovOjEOiw1dSWbNaY93FkJ88oovpl8LTHPJ8qaYoJJpgZmp7H+fXPU9vYRvxANUEHROJD/AJCArCShyF6GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+U4k+0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+U4k+0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3312C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770791693;
	bh=UCO7K3/qJb6CEzhLR143e02rDgrX1H43Ibht0/W0tyw=;
	h=To:Subject:From:Date:From;
	b=W+U4k+0BgTDd9xeSGVBajzgnCrelH7UlaQA5KxE3LQGqB5GLv+AMk4lIjZP1JXxaH
	 vDI8l49RezJaf0NuquqCajK3PXOyysye2N77ettmb1O5Q2aBXgN1tU5aXNOqQPavbZ
	 gozmsqQHdmiG7UYco9fNr36I3v6B+f27s0viIDQQ7WYS5plGjpXuQNxq3QKaMnkYqo
	 4IsSmJsno6d8jfMDxysjYvoHzt8+Z8UDNPg0gW5Zg4U/qYhRM8Q+1SSVfnErJlnnj/
	 O0alKWujOw7yKfZa8MBTJ9kTrJHFUBsz300pFbayUAyrOsP23nyOkF2XoiObmSLSwG
	 xjsF7wI+ot/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB04EB596B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079169362.12019.8678284362980105207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5962328d286c845eaecf7e243d5a5e68fbf1693374bc2aee1c17e4e0a1b687a
Date: Wed, 11 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770791693
