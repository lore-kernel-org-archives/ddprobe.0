Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1D772635
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746706794; cv=none; b=U9Ot1RJi+/InMTJVMMtm4LQpPSLQxd+pjMrGHojkDLeQ8EkRFixSsYmYs0xqVL/ohpuVMr36R4amIN2QvGWUYi1vyfq9dBZs62NGXO8BBLrdswbC2TMVlsvqG7Vv1oQHxW10fIBbXLrvBH8Vr6izibU/adrb3uG0YKdWgyZZVFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746706794; c=relaxed/simple;
	bh=ULLtoIkOWQbbzMweSVv7h8RJu9uQ6aH+HhUzwuYE+n0=;
	h=To:Subject:From:Message-Id:Date; b=Nnfz2ehTTI9+pfgCdckDiou/DC4gTomGI8OyaPHrU/SqYZWkr2QoChKQ3YYEtT3B2YFvtwgrdT9hA1TczvQ6/2TxXRlMVOrhU9gSR+zwWC1RX5IywgoXFh26IPo5uvNnQY58ywmJGEcenhJUgPsxnqX2Hr0GmfmoGBaoo4YaT08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0wuwrQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0wuwrQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746706793;
	bh=ULLtoIkOWQbbzMweSVv7h8RJu9uQ6aH+HhUzwuYE+n0=;
	h=To:Subject:From:Date:From;
	b=X0wuwrQFsm8Xx0I3ZmiBNtGjrt4DChwvhEVl3eNt0umChV1FF4K9DWPcC/Cmwn+6p
	 akBtWVGzkBQV3d34wGCSniPuI2+4VAp/u2yY7r1suCGpVSTsx1NHgJIUkqkYGJSE/c
	 NdFwo9KYgCnlVacaPQtqVpNkryHhxCuJmrjM4V3Tz0PK0k3B5Gj5RKFh5zWEfvIhb6
	 X0UxOuIG4JqyfeI739+ggeBhKp5tdHOm8T2AC2lksuXKi9Rx+YRl62k6S8dFl8iZ7R
	 gPrHrW5yzUgcAiKfxYKqOc3gNXA/Ka3JFJSH71qmyRiJp06ASxHLzPJJ5cYb7pqaJF
	 5S4BSw1zu0tdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067DC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670679358.7944.16966063934498784249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f407fb699b809e233a8a68503d696228215aede0aafc9435f9c3ff11dd2045
Date: Thu, 08 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746706793
