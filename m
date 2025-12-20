Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228F62773D9
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766251434; cv=none; b=HBID8g5aPeI3yQ1OYmEBA6LTW5hbX1dlwXViZsk8lDG+TKGW/mqVj2zzHeCEoLQDdYheLmownh5c0vQFsZqqZtebQegL/J1JyMZ00DaRwSFIPcVZ3G/Yfj5TK/Reph3+0G2COUW7TeXTxGlUygh4VVBkXnxXLVh84kidovx7he4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766251434; c=relaxed/simple;
	bh=/CJkz90aTC/rZufjxuWAp9KmGNvR8MmwCjUZcvCfp8g=;
	h=To:Subject:From:Message-Id:Date; b=LAQPYPYo7H4jPGOQi6Wa2mSlrINJdSGPBtTo4g04XuDSe5lUneN+bmpz1rUS8kyA8y0u3u90UCJvYzB6onYE4yzOdpOx2LseMiajWSierpeITdWEg/xQxi2XsAmi04jgdnTI0grKADr/F9shEazgEcL+Qz0yBIOCD0fHFzvpUqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpwnPIbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpwnPIbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766251433;
	bh=/CJkz90aTC/rZufjxuWAp9KmGNvR8MmwCjUZcvCfp8g=;
	h=To:Subject:From:Date:From;
	b=UpwnPIbxOj0spuZz27b/UAH+q6sCYmuh6EI64CW8wPly1qoRwkNfR5VpZk7YDBKwa
	 bZ3O2r1obkoN27QFH0B+ou7W//hJMCpsWEkTDo59U2QBZUTObEX+7oPRdwZKVLlLT+
	 1jb33/HlVcJkbWIKPzll/VNuTdZi0hlVZdFYFve5ZG3W8Uv/qdl34kxm2LAEz+KO+E
	 JvPd81t3ZdHseBEr8EHVm+RDytl8vopeqAEUWD6qW4els62k8LpeHRiDLS/BRTW9SU
	 4IHg+UIjKOqYnnuS+/4HGMQwxYp95KmhkX613CtR3e1n91r5BEZMj5hFKTuP1fLvzG
	 u1nKI8kq/AgIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95023E668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625143357.15859.10907100247972160627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5489bf1d46f2de5ec7a3afe248ef36b08ed9bdd1ebb0ddf6afc6b1bf5f18165c
Date: Sat, 20 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766251433
