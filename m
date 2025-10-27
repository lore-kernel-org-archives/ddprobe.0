Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ED026F29C
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761536394; cv=none; b=N/5oS2S462p6LeKLb7r7VAXJeoxOXZ5EbYyS/mI6b3/fSnfmlqDbyZBqjqrnsnDZoLwQQ3gCLbEgYtUF9qxvLHIbeGptR3Wa8t4XEq5zDcEhThiLkWtVPSwf6WjIsXVJCxdDOJ7VjuOBegAcX/eAvafe+G3t2SUcRWo9QEDV3/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761536394; c=relaxed/simple;
	bh=x9XbNL4rFBmVbwcxyGNiElj/CrI59CXyJ3bXYbXQAJQ=;
	h=To:Subject:From:Message-Id:Date; b=hJKsgyu44nC4lY0jZvBqr5hYDR0KAtjzoO2a8BW6U5yLyTbI3HCUfS/nl5FxQ76cu1MWcjNBo72dPJI3rQ+++hVOD2AM9/Gs6oMcH8TNEfpwJY88eeJhkU4whiJozE6/m4fhO30V2rhlyFUeOQ6Rd1xLeUaCA1b90Gr8q3CEfcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUUfoeB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUUfoeB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E52C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761536393;
	bh=x9XbNL4rFBmVbwcxyGNiElj/CrI59CXyJ3bXYbXQAJQ=;
	h=To:Subject:From:Date:From;
	b=FUUfoeB0xtLh++HAAWdS0rBZ+CMgt3JLnQRRtaEtOdrwaXM+rsURhXGdLuy0/2ATn
	 t4PHjVkN0uiX1A95BdN75OHg3YaIKBDsYaO8aQQMrLNYq5A3ZirrhMML+rt0VCbidT
	 RfdWvFdYy2i6KrkpkAv/mB6tiNAVFVMHJGXhcM0+arH6TX7fvYdMImuvaKmZT4KgO/
	 l3pTqUvp8yRbB6IhE9+SsOPaNLrLy0whZhHLKEOcU9jLnJSR3x6veppQNhxKF46I+z
	 ULyOQVLrj07fb1M/mmHi+X+sZIi5ZawmB6oDV4rBninHi4c64jnqcFWSX4/wSdbfFT
	 blMUf4px6TNxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E1CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153639357.10718.13359532399922186263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d69562e440fab5b4bac4702580487777233908412220f59dc5536e59f8121bec
Date: Mon, 27 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761536393
