Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1981A00FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745233794; cv=none; b=r9g0k739A6k1dloPg9seGccHarBHWUJy9tzvU2e7MiRsQ2fcABaWoNyxjPVAcbZLYolegUr26UG7dV+rTsTK/pfirUngIcHmtSpNdvyPOSn8MNqMYadnLHMAWr8no7CI7ItKV657aH1MBPXOvIgKGf+774W1tqhwHPwHsbBhsLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745233794; c=relaxed/simple;
	bh=9c+a7gg2MI9HAKFT+358mTWjIfLRm7zYoTAKRH6Vd0k=;
	h=To:Subject:From:Message-Id:Date; b=Wjldr9KmQSYPqT650By1XY5JjXAdELmM0xcu5gvVHYPrP9Rp0/Gd4RGtoRXUNkDGYhfDWrLhc6RNmQoBNVHlvtsKzmfYgVkUL5P+rpsrYOKziub9QXH9O8nWTEEuebk6ybwaplu8kEYxWtF2Yg6hMDOdNGxokmnqIOgAVHriEWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS4jLb1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS4jLb1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC887C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745233793;
	bh=9c+a7gg2MI9HAKFT+358mTWjIfLRm7zYoTAKRH6Vd0k=;
	h=To:Subject:From:Date:From;
	b=LS4jLb1qN6fafbH8AYG1O+hpw8HGq9JiwAVtmjmsLFRjWKM3vL3olWvJCBh4iJZu6
	 f3zXgG8P64I92kD4P5arDKlhUZGkRP1eYAOutMVa7cUUIQWXz+UgVxw8HTznUDzbgX
	 MNWeUArCFEKnKH6xGa3eJT2vHVUQiap/adl7nROJ3uyaYGkbW1MvN2Qf2q/bAScrie
	 WiXLxxoTjoKM6AKY+wTvlhcMcWx3GmBtW95JRJqoQt7oIyIXTfKapxKZbPhAAIdUWq
	 KA9ERdj+AIvsfPW9dvBH1/oTU4mXasdeEDWCKkcJjrLg/xbGPjXZ4fv0RIQ9Clqxme
	 t+/XoTqrUJFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2EC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523379358.3472.1935861329355249864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6bfa803d109aeedd055a46f5d395f0bcdcd58beef1c3fe215049ad08a97ce1
Date: Mon, 21 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745233793
