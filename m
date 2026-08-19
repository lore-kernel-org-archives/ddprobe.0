Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFD33E2740
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787178034; cv=none; b=lpbNRuyemGRITjc925EjO2APZWaKsNnduOsgun/9XtmGH/9EQYNZUIYB0lxBbIPl0U0INvdss4LiuIqP3tLyErPwmxkETuf3qjVYxSOkv1m6pbN2fFAgGOwkSB7UM1cUgPmwpeltFibuxJ+uveXSJqB0XGKdEw53g8Ix4s2w8Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787178034; c=relaxed/simple;
	bh=1wOlzAJP7TZkgv211tnqCUnN/Mu5Ot4nxzkTXD3VcMs=;
	h=To:Subject:From:Message-Id:Date; b=FbW20jJ8hYnCE+Y/jsK05ZqgcJY3TsvNi+wS+VLCDmLZjXT4gh618DineIeU62wwcU5poqNRqFyZ6G4C92QdvQiDgbiRSVVU/c+2sAh0VkP99N5Y4cNsfdlbZI3vk+kWow5MrpZjJz0Sf7vEgEsSGOKF8C6vMx/TeITFQif3WmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHkxZvzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHkxZvzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE676C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787178033;
	bh=1wOlzAJP7TZkgv211tnqCUnN/Mu5Ot4nxzkTXD3VcMs=;
	h=To:Subject:From:Date:From;
	b=hHkxZvziJupO8IdBEwZ7oLJ1OTYzEJQqVhPCI71sMkYEuu1vQLSl0aXgIHripI1of
	 pPj9c6BfRJb+gUmFllwM3o2AWT3+H3IDL4zYP1tadfm22Jt2e4e/HcjzqXxcI5tY2g
	 KYJC8zBwvWFCewtkoGhQS4bfooW7t4cra0gZN4aN49d78Dhy4ea/08oqm5LZ1tY4HA
	 VutyTFyo5dyZoL23poL5SFdFdFY+xYKPYMQ3EP1sTrZ1yBbH5UWD5UDW7eQeWQ9nuD
	 LvxLWH5rSs2pcs1SDApQpnuvgT+tyi6EKNeWagYM/vK8LzDvELEw5JxcqrrQ2/wU84
	 xENPUWJjqSsew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD49C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717803369.1091.15427670677558740424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576c4066843057ffe1eb4cf8c0845cc31afa0281db7e9ce51d726cbce129de29
Date: Wed, 19 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787178033
