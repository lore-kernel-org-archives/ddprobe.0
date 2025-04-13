Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A40176AC8
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744586993; cv=none; b=BdIJXJX94e60E/FwiFTpE2UHWknl8EFEoLSsuZC98LV5m2GnGW9c+RDTNmqAcbYyeC0DCL3stH6I8ow8O0a+3lr8r96w53krrl5GbRHlLIyE9DJhrCd76RTnrDwuvb98T4I0YE/ECU0xRkgCT6Fn5lhXiGzEu/6uxiFYqk62DUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744586993; c=relaxed/simple;
	bh=awT2v2H65fLaBv2bPxgJPH2Cp9KD+Wc0NVbVJrroXwU=;
	h=To:Subject:From:Message-Id:Date; b=caRnxD+MeE63KNQ7UbFwWBQCeKubUjdEJM7J0oRlmKSxXXvhteSY0zRI+9MEwVDvtPyPw/Ucqy3WW/Fm32f9StYlR2vV4pY7tn2455XReB7wvvWYXH9NCVKqfH/S4EInzseSRM+7Afb4oco94p0xH4q+YNps5YYZRnyLn38ZhOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuIrIAg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuIrIAg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5280C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744586993;
	bh=awT2v2H65fLaBv2bPxgJPH2Cp9KD+Wc0NVbVJrroXwU=;
	h=To:Subject:From:Date:From;
	b=RuIrIAg09IaBxZn4Vfxj6pdi9peANdWxIrCGeaK2JSEYDJa1V0d6ZIbXVDKVA+Hf6
	 VBir32+MToD6uB+q/HX7ahSUZGIXSfdH0vV6CpgrHI6hRMtKYRSIJAKqogFd6mtnfG
	 Rr6t+ibadHlLU/UGtKEFUVFsiXXqiMDZlaC0jTfMi7FKHDtW32wErT3P+fMERLD178
	 AQVG+Z9wxZRx8XzfmIZU3GtMqwmJjjmn9bWU95U2tcBcWvk9ykuFgTtqoN/NKCqYfl
	 tyQEiaaBXh4Ed+svD+NPfjiFqFv7ictwiwtBtg4LzsbA/qQCZf43SOzLh3C33dqCG9
	 +F/QAUbF7cKUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9C7C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458699360.22416.15146824035939498249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888159d137f42154dd69ef0065374c3d051af7f985b0d5beb295d2c9db82a5d0
Date: Sun, 13 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744586993
