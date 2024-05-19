Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20F8F7D
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716086543; cv=none; b=tYU0cQbFIAVoYDU/xpltRanPI/lSnhSU+su6lRZCpTBhDgy3L377tc+o9n/FGXK1ZKpePRcpQVdPg6TvCTIbHFp13428t7+51itTC1d9rZN3dWACfHYrpGd8RTi3oy7tc7G1GA9U35n+vE1Eu05fMVPgizmd5yzk7WVLv7Dp4Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716086543; c=relaxed/simple;
	bh=GTvkCAwWuzJY7sIV+252hzl0jHcjuZIIG1qsj4JHd3I=;
	h=To:Subject:From:Message-Id:Date; b=PifdUvHIblYN6jRVfgNDQHI5j9mxjWv99xveJFyeRUKzrAbVNBNWHd884ziIeF1zwA9iDc7d+Z1CbgGQHcYdP4KnVMuv89wU8aM7BXHM3y7p+39c9qaZYGrDplTylk+VO+F2DaGPAKYRPfFT3xySKcB5X4ohF5lacLQ1hReKh3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOWb2NHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOWb2NHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD43DC113CC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716086542;
	bh=GTvkCAwWuzJY7sIV+252hzl0jHcjuZIIG1qsj4JHd3I=;
	h=To:Subject:From:Date:From;
	b=OOWb2NHH1Jsk5u1c2KR1rgl3Ue3RU/D44bNkfbnF3CeLtGc8wgP5QFXi9X4+y4MkL
	 SUjz4E3s7L270YLU5PYNFatHk2vcI5SBlZcqlfdJOudsL4wJyLmDKegtP8PqXpFJX1
	 rg+2jHOE+PLZd5dhFdxPigc8xyds/Iq1PfQGIz4NXpB+nPTVIIe32RC5z9qCK6Y8UT
	 2iH4D2lthXv8oHVcyOD23SGtBQt5qe4MDiwuCysvxsseVXx9CJnF4hR41ucQgq8umA
	 gMQWAEkKwBMTv6GmxeXiAKx91MYCaGJoZsKLENbBWOPpWYSr36vvzox10+Vf650M+E
	 04yIB7k/7KBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94F8C25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171608654278.30642.8345876412187049312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e505bc1760c3a85fb0c29c09aa2f6939821366826478cfd7e81b1266da6bc1dc
Date: Sun, 19 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716086542
