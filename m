Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4967737C936
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781694394; cv=none; b=unGZvrYNr5xj1eUk/OPy+J9XfzLqiKYvsnpKk2u+5y2dkYDCNdtjJPtMAmVEy9kAZ8uZxCe/k4/WaAh6aVV/qGc0Y5tr/g3tK4vdcOhF2uCn+xSXH9/6ToodKBsr7fizaaIDyUI9LJAc8xEGuMr39g5RdjXO4DeEi87CIMPuoT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781694394; c=relaxed/simple;
	bh=hN0PeCKTXyzolVJnC2X2q1YT0QV5P/6GjmSYTmzFj/c=;
	h=To:Subject:From:Message-Id:Date; b=fgMDjUDeNt9D6XYvQ2C2/BhYGAn9wTeYIEUfoiPuKutBWohUj/aSGKhh3yLYEbqfkvE7EaJyCgLfvYmjuQ6I3tgugbtn923tndxyLgpavqN/9k/iaiclUQyDomqMISW5iXaV/hky/ZkP4sMHgiv1Jshs9w6zj6Jj5NUouLUE7q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6VdygUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6VdygUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D09C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781694393;
	bh=hN0PeCKTXyzolVJnC2X2q1YT0QV5P/6GjmSYTmzFj/c=;
	h=To:Subject:From:Date:From;
	b=f6VdygUa78HmT43BpzX3P7BKDhsPbAez3UycIpvQOZB6YsPfpMSDAgxcN2B7J2Mz3
	 j7Q7pfVlpBxYI/IFOK9u6NreiN5PbDEjnn8wy8ZWXsNNz4sY4VhY1fVuQevDLKwZnz
	 JzDrcdNdWeYnNXtvaQLY9U8XQaq1OWX8fn5g5I0x9FRvGwD+/ml4VJ+HfYVpSl/k1G
	 A1BRdgxpVNpfVieIvZO4VhWghcdG3VGfOepkypYQxOVvarBx9cW6MGaZwIDQgxdmQd
	 7s5e+ASwGLvT7jOOEaZQOmTspol0fAmegy7QSI18Zm+XOBO1H8+y1pbjQVXwVxtKLF
	 f5HJ0IJTfWf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB078CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169439375.2458.12599372441286343413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59087eda4a4f5fe1a3222b486a038a3e67d42a829bc18d659f2a790979c6941
Date: Wed, 17 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781694393
