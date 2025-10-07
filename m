Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62FB10A1E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759859993; cv=none; b=a5d5F3Tq/h6rQZ5KkwDQfz6pFkKbCd0sN+38iOSONFsqhFhRGjEBKjD4Y15I1EwpNxPypNLIfE9LZhB3si1uao/ATQKReqpu/WXbh2/D4vRPXlEZzgFM0dnG89N9+NVyNc8NhfxQ/sI2CFDjRFjtcLXqglfij1PRQ4kw0CYE+K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759859993; c=relaxed/simple;
	bh=wVpQnLMYOQT9Fi5J59fD9oTLNJ8UkLdvXvR9rjsVB/0=;
	h=To:Subject:From:Message-Id:Date; b=qIXkxo0Ge9P5WeTu9F91PXeGk8Tr7AgIA3gNZkmFSKFVjarI6+9hxG1uJ2oQiEF9unNsN94Wj9BtJmnBMRhVKce0eShBKtXZX+ASC6JipemcvLQyfSuXWO/77ypbfSVawXbawUIo/fAwNoYsLBrijVJFFGif1W5L2FONgpZbmRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qobIh4ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qobIh4ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F72C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759859993;
	bh=wVpQnLMYOQT9Fi5J59fD9oTLNJ8UkLdvXvR9rjsVB/0=;
	h=To:Subject:From:Date:From;
	b=qobIh4exUXWvd/Oo3SwjZyoKQ0M9lra5de5L1VXBc0xoFx6duVS0EKRxFJbBzqe7q
	 eKRcKcV0Va/F88WlBFtMcC3/rPoA1vrHM1t19QFrL0TqrDpUDR81cgzZCj5nSEgMZJ
	 24dWJMCEb4rQpLkcms/qNdvAFk3H5O2e3b5wHVkzAx6w0YHKFAlf9UZbWaEtiqqIgI
	 4f0oh551WWinGvXNXWNK9c1HHdHR0Era/EPVrbVRO01vxsO2olETHI1TCk6BN189XE
	 LvMxvAVm/v5MiZrE1gPWp8Y77ss/sFCcXQls2VAQ1ApawWgUQEF0eaUggtskpNYnGn
	 pqFW+/OuIKjHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F2CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985999357.2210.18334973774422865460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c23bfb22926bf663ec7ec935dbdc507885f9331e0541cc34c80fc26f6010453
Date: Tue, 07 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759859993
