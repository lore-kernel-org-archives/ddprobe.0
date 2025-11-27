Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0674D2FFFBC
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764267774; cv=none; b=UN6OR0buP6tFo82dKHO0LBI2MzHMxVz2LwTfB9fSUtPVjCZPy8Tn6V1OeLVXpEka9yii6+zG4eH7SutwR3DT3/ctnR0OqCru1zLgidaTyQSRmzRwljKIGq+h5gp+hokHsFBin4/8js/yQqDCriaqMhBOPt9t8GnjRuDH+0sISvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764267774; c=relaxed/simple;
	bh=8rC9lv26LUXVRXyQKHNcfLCm4PReEuhK6ekW5qcVY3A=;
	h=To:Subject:From:Message-Id:Date; b=uleXsrlXGZtGiweYL/y/mCa1y9XmDogVI5vjlWtRFaNQydkhIMZhAt/f6hnssxT2TWRBvVZzXZywyVQZt8yO5CSMG0IRBTVo0PkJgj0R1K6p4I8+6wlaKgzPlyVRkYkXul1Yr30f+uLSpUhWJkzkIg7fYUcOFG3AjI1cRsM6tMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bwy2OqDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bwy2OqDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F34AC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764267773;
	bh=8rC9lv26LUXVRXyQKHNcfLCm4PReEuhK6ekW5qcVY3A=;
	h=To:Subject:From:Date:From;
	b=Bwy2OqDxvkAQnptTLPv0r+lNFB706K2Jasw76/pX17M5a42vcMJTutJnvUDmaFQZD
	 RxWYtJFwj3NoBl7+J8PwqV3Nj+KBWS8W+eopVpu92JrS0szm45Nr1bFdHERNitWxqB
	 IHNx+5KVjKW0oOCt+ie/XAq603EM0IHD0BYlPktgWcGRwFhwEYstwdxWixf4BdAPla
	 XCHntbggdAbqaRF869pWeKoX7QeGp+9UJL8HVDEQIsmm3/LF2puGl+YV5gBmipRcbX
	 8CNngN44S9+b6mUbDjfMPkIkZdYTKNpkzjqHaAItr8B1He1eeO363+E9zlwuUymye+
	 ZaHz3S3cMlH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E3D116F3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426777358.7245.6791344855537627020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cebea347fff17bf8a455980fe490a81221763899f1f67b92e7d3089314aba04
Date: Thu, 27 Nov 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764267773
