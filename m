Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E42172622
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766966634; cv=none; b=a0mGdGOLAuZSbdHS90pF8c/37Vax42aDkALKkW4jWH706ESaJ04QWubiqd8NFvFNhXz+iTDCG3Rr2A+y0GdRnf8ZOS+Qf/i+WKFxmawZ0qhn2x64HiAmdm2u0JLQsGPCezIdkZ/GjVZS9eUvQsQEL/WVaBKA0jU8JsRWHb0U1Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766966634; c=relaxed/simple;
	bh=hpqM9fMMTIo/QuqvGrqi3JJ8OSZzodGZlwopMMi3Bko=;
	h=To:Subject:From:Message-Id:Date; b=goHM8ECAvDe/K8ycKNcVuSQNNWtVCyQ9ZU6P+kOTO/+t55psMGfgATaNbdot6JW1tJX7rHG/3WQPoR2li15gl+8ADxIHV7iHDQxC54y2xZp0hFsEJ9c0CnddevT4cuIogUTpV52vGVmuAE4Le5/Yu9Z64cAMtAfsMCV7PNB/ViU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOa2k1H9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOa2k1H9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03B8C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766966633;
	bh=hpqM9fMMTIo/QuqvGrqi3JJ8OSZzodGZlwopMMi3Bko=;
	h=To:Subject:From:Date:From;
	b=cOa2k1H9HzgBbmwIUPkh9lYrqHxE+NN2ACuwiG9HuVuHdu17M/MF/1vQP3Hco14iC
	 rX7mgUxvZ/PZrdP/S6OGGK80mXq6TMs0gP4F4bzzysx7iMiOlC7x0EP/KbgS08WY+f
	 NVnWj7jM5ev/JlTKU/DUM2Zb9/5oOkp4Fp5hGcJHvAq3H/lD2TKzZWolMmzwBRBs2B
	 4SyguGFoj/RyzSyJwFrXmaPd8iIFiiRBTt5BMFgDHzbxgbHhNLSvtSbFVqkBAS0EoX
	 tTxs0HU9Mg5KEBS+bpxc54pcmVP7gb5ZH+wWdSY9G0xECM6aiQi59LHygb1ZL0ViG1
	 8gRAQspG7fH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CECCD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696663362.14435.6972604955893819588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e86b223a90e25c41baff11fcf733a53f99f2eabbdd9f064072008521ad35907
Date: Mon, 29 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766966633
