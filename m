Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1913C08A
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726581954; cv=none; b=G6aWgPYUXAQAuvBltjAlpIkAJGhwE6+k/rz+Z5N4hA+jHmMyQp1LZg03dLM2I5Ejd68VimBBQhjz55EKLKSPyz9hrrjQkzXQvEviMC5lsF/E29hAHa33eZWL/c1WLoJ3Lo7QVprUNk+LV0PSl1jMqScgBgAdUmwkSe0mdA2O8yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726581954; c=relaxed/simple;
	bh=Cq+axVbNaF4hMnd6FXCYydwpqrW3pxeZ6+YMZAh9UQQ=;
	h=To:Subject:From:Message-Id:Date; b=fZrgc78c0uFlXvHJSEsZMn4g0MOGW6SgfQX6FpqQ2DT7KtKGGAfQI6ceZ0o6GqiidnhfVgM7GbTrMHSE/oY/tx29adJY3XxD8ETl6Qqns/Gxy2+9imZmr49V/sYYf46Xbxt2I5erB/+OT0kfiXnatMI4mryOP5z94JyORhnx4wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzCtHBW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzCtHBW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B085CC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726581953;
	bh=Cq+axVbNaF4hMnd6FXCYydwpqrW3pxeZ6+YMZAh9UQQ=;
	h=To:Subject:From:Date:From;
	b=AzCtHBW8zCt/6ERECt1u4A2In3l2Q5H+0KBGkMOW/YKDYWVc33edWpiJ3DBR7/UfY
	 kbxm0nYfWeixtIvAQREtt1qlmh+f0FbJ/x9mKC8pCmm7xdaEXtX2nHXMNYf/b1uEPO
	 KENiYe8ynKOF2L/ULpX/0E2mRGWzMViCngdSgDpbGX1L9ecliX1WTmzpC6ptB1rEas
	 IuyJ75WMj9t3mkXK3yqek5GvBEiyhnf6MXXar8gE7cl6U62klv/Onb45AJlm2/J1oF
	 K+x9q3chHxhMR8b+kd+5BooCgbjVtKYGpQltpKwGUtse3GjwXn6k4/XMF2btm5aD4g
	 j8HC96Dblw0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96862C3601E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172658195360.664.16441549846477057777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26554d8a641278d772204f4841d324e28a192d5d5319cff7a5ab9caed441575
Date: Tue, 17 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726581953
