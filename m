Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293483FFD
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776997654; cv=none; b=dLZwnz6EVH4qFZedsIzv2A/q2Bd9+xbHoqTGRIs7H7McBPISXCy5Oa7gJzp3sOtaN6eWp9xUKmKQVbsqTGdfsGLfacKwa5vx6F7ADhNdKTibhpPJLSw4GB8YdBpdfD1rqbhbNZPyfH3dhWcLi2Mttc/sw74p/UBHDAxpUQNm0js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776997654; c=relaxed/simple;
	bh=gmsQRvkBRSxrY5MhRvHrOaUEk1ARqdg1eYNZPC2+kDo=;
	h=To:Subject:From:Message-Id:Date; b=i/GjGi5XUYf9Dh5w7B0n9LXlXTojOH7xyyX9sT1xSnAJDtlfwFgi3mFDQ7pgcdUBg8ynSfZ8ngxNbI00Mom3tGfbMPbL9xKgSMQKtCrvZfLr9jE94Q8dPYXkTyShun5zltxR2cRFKWFuQCuCzWFKf96FZ53jWblZHLE1vjB7S8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqIeHACI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqIeHACI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF0CC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776997653;
	bh=gmsQRvkBRSxrY5MhRvHrOaUEk1ARqdg1eYNZPC2+kDo=;
	h=To:Subject:From:Date:From;
	b=NqIeHACIZWRGSDotmvEQxCmgor7iXU38kd1spW/2GM+Omqvp1vNPo0oOAkudiKUcU
	 kGI+HpgxWuuWVWSB66xUnnjjATd5oEXuBoFCoYlMAvr9n8JzrNWhNa/z7EE/n8Ul2G
	 G5+Bpz7oR3N5qtkjBx7DMjP0PgCrRr0Y74AaNZ+CzlZmZPb2GixQVJ3ldxQLauVJw+
	 Vv9tk3k8LoA22zPjYXtEs3nDhF+A9pfJBggD5eLaaBkdWkdTH3S0NQzCuLfOe6BjIh
	 35ad3kzCEsWeGIsvCuKhoeeusmGOSZyWZRIZGiLRXWYJHiO64MtiI7nB2lrP65BGla
	 2Theb6wy/Oggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA13FDEE56
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699765368.25939.17497659826907493840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b5f3b92c3a767f86f8272d0eae11d34f63b4adf6f357ff6537be9825e9dddb
Date: Fri, 24 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776997653
