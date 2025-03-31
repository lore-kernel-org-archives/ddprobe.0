Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A4627462
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743425993; cv=none; b=ZGq6gC2uHwHtC0Cq+7Q2VIPNwnTzCtXSnOjyoH7rhp48020L4CSwcGSoRpSL9dcJlyzcSNXNUYSfgm8ju8FEDIkOCD+WBqud9iwkdHoP2C8052A4K626oYvIVaP9pd85LOJ+zWBwgFQWmGot/Qf2cyy3nWUKLR/wuJp0K5SFQy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743425993; c=relaxed/simple;
	bh=XUEkWnh4nqBC54hnO/nkv6wRJhumC3GfGZ14jrz8Pn0=;
	h=To:Subject:From:Message-Id:Date; b=b6rtWVpfUAZ68wgtdNcU+j0tfIafiMhpUfQe4yw76TnOmVjsaL+1ioVGf3gePi7yNXrarYA4J+DV5gujV28oR2zT3mlqPgp0pUgpJXXP0NxDLY+L64JLZUx8wF/MdA6YmbFvjqLMW1milQ3KsFq/ON1bpkQwkQXqEDw53ngcqTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6w4UgdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6w4UgdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DBC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743425993;
	bh=XUEkWnh4nqBC54hnO/nkv6wRJhumC3GfGZ14jrz8Pn0=;
	h=To:Subject:From:Date:From;
	b=M6w4UgdFmIW3SBl9ULfwO66xMdjL9LG9aAw5Gjk02lj13pThcIkdkFmf0XQ9dcyaY
	 UB+DFNWMjkx0jIc1pZUKFt2utINaQc1K1WWZHqCSvyZzCVJ+wtw2lTXX9jm/QUwArP
	 989EGTfeIP0hGDvzx/Sv5ZrJRixtI/kGVoyrGOEQieFRF6kvBy6rbAG+vsNfIEgigf
	 V0cgDBYy9oyaDvKUsb9+tztGY0u10P2K4FeC1Z2QQgUj/Mj5ETid0oQV2e/MkFtlDl
	 6IRUuQ+R+RjFqFQLgcg1CYMKxa5kkKQgOY+9jBehlcYtbFYyCR9PeCBqmbatm/M/cd
	 fv4a/2Xq+qbkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956FCC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342599360.9159.2372413658500125945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5d85638087b700df3c82feb0d5f2c35827372368c3d77fdc7fcef3b3a0496d
Date: Mon, 31 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743425993
