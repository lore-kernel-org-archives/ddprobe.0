Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D55F392802
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776112654; cv=none; b=b+qcrcCbE0+XFr4tvT0jig5l4rHcFIqfSFHTqe4KrXC7ysGL+Kbot4uFiHJxnIMB7S2kxetAhDbUIJ4l43jDSUE0rAPX9JYrjveedXRWJFx8E71mAqMxSpSg5gefFXK7nKM5HhetjEBGDwkfvOu/FpOP7WIFZojPru5oaYPIsXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776112654; c=relaxed/simple;
	bh=w7ubRHsMm0lN4m2dypvUHsy0+8fPU/wGN/tM4nNv5H0=;
	h=To:Subject:From:Message-Id:Date; b=YXo5zMwneAvs8Jb9X54DMgwMqv5Vh+iLUBfTyyq/BOPWqP6sNVFUomgdm1ImHkg+E7FPSTI/S1zYG51ZQv1GdQ8uH4+wsqS9Rb4zMx06Bap9TI8Bb1++oDorINaOaiYGyL2hE3wvKiB29FqI6Wy815ChflZgc1gNUYnKLMT3dNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8iFfaDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8iFfaDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD6BC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776112653;
	bh=w7ubRHsMm0lN4m2dypvUHsy0+8fPU/wGN/tM4nNv5H0=;
	h=To:Subject:From:Date:From;
	b=c8iFfaDoOjUOh2lYijp9YAgDTu1ec7uU/cUoZKVX9BAtOA3j3aK7RL7Ut9rNOwhDE
	 uaNj+Qb+DN/8NUs5i/LOzpSYAlOWWULrPsEEcKeEYLzxlPUca+O0hXBeKFBa+64vWE
	 O5O0hnKUZspiZoyu31oNoFV+bSi4NkgBVyRuu01eCLfxgFY8qhD6DFr6bJjKSTtMBw
	 iEXazZiWiTBNBTN7tU9lTwD+IKq0vG7DATHbcRiY3dtirQsZvYneH3GqUGCikEpwRG
	 5qIp++Ffyj33a8JIGQlEUeDuiusZwilC3zX6rSSnmODFjS3zWRIyj6IElBM7cvZt5H
	 9W19gPM6mZ0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC484F531CD
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611265369.26411.6891819360870348801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f7b0d61689be0f5a67deb5307bff8c64d521020956388d469263f7708230da
Date: Mon, 13 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776112653
