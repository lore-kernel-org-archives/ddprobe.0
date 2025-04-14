Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B0E23D29B
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744637994; cv=none; b=ZrjylfcIKElIN53Emg8G5XxBgocpe2vVS92oYkho2M1hoLsKhqiSF8DbwkBpn7jfPU70kn9nQQWTfndsnuF5RE0YnxYCDXA5Oi9n37mrxiG9FVaX+h/sV9pnvU0XBIjnkhN9li+FO/Zf4XPF9YIIInS/biHlAYWaEc0g2mHl8+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744637994; c=relaxed/simple;
	bh=S7ouJRT2PZ+EW9Q00pZRY0ssJpGzCnJqAQMtUJtvWxU=;
	h=To:Subject:From:Message-Id:Date; b=EyzB3eDwaQPwmMfegH0FC6fYrwOOB8bAI/9Q4N9CGvOllfV7dxG4Ric2KMdz+oqoyIzhuX4RcbgauD3hj3S14q+WeJ7uqhxt2Bv+YaovXXuBMpl2iWsKz47NNmls+nx4DUbAr4In+9SoolyNzGM3QIfkz8a0H3hvxw6UzdKLjw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2VOy/5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2VOy/5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB137C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744637993;
	bh=S7ouJRT2PZ+EW9Q00pZRY0ssJpGzCnJqAQMtUJtvWxU=;
	h=To:Subject:From:Date:From;
	b=O2VOy/5WyLdUwlgSAcAP1YIytZyRpOBS/v6MnIWlCyXoN/78HZKIBqdr0VaiTb4SE
	 FmQI79TseG8h2YXtH+TiHm54gU/tPKZVKP8e4HZZ685ZyKsp083e6V1FnNryJa44Cj
	 cJPt8vL9wcbhs7WKuT42inx8HZggWDlBvBs7ky1tfEOdFpYkUQDoSVxoqulod6H/bA
	 eewNi96ZXS1m6J9oRpvkjEGpHmj/pJy2EaSPuqpV+hi5GR+jiyg0F07LHDiXILlXON
	 Oso2FVGj2FDZMKnLU/786odtI9VyqGLkykrzrogsiS7cGg4quOl/AdzXhjMSbAdR99
	 flU8wxI9sL9yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9225AC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463799359.13456.15252130290979603749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ead3ab2704930c6d4dc926f602af0bd5ad79d27a665d4448532db18010272e
Date: Mon, 14 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744637993
