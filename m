Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6F723D2B4
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754302194; cv=none; b=ajI+gurvy/rdita7EmxmL0P0HCChYrnz2JQzYGl15nleY+Anfl2SDc/bRsXq9Idwt4+fAj/lZb2OCVHeGVW6OoYsUMO5cEUHGmBPb7EIXa/i8imk5JbLq2xrCKJ/w3f0pr9sqKph6f4GJlZrXUvvYfGQ+pjzmEE/aLndz0Wdwt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754302194; c=relaxed/simple;
	bh=+81d2ou36NiiMhjHqDyqvP2/L4DXax3rW2E8jkLcmJY=;
	h=To:Subject:From:Message-Id:Date; b=ZT72qkgba73GxI27xLvEC7fG2MqVxgh+DR2oLAxOqWGoSXjTNWvFlIC6e4EdkSMlCYzDcCkIIJaF0gA3/rq44iEJfOVMtlnHm2B7L8blxMoXroAk/n/pvm+pf2AK1dfbPtFzgxguuwpmZ/4r6wChUAJuV+KUYrfZcKm6P5Q5YJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+Ty7gUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+Ty7gUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DEFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754302193;
	bh=+81d2ou36NiiMhjHqDyqvP2/L4DXax3rW2E8jkLcmJY=;
	h=To:Subject:From:Date:From;
	b=B+Ty7gUwB+gj9AyBnZ/eM3G/d2luONMU43SgyLK4CbFGHx3FHVLSY5mLkoWSotD29
	 EtX6OIH5ZsFg71CgQKZUxL6QgNIObJY3vg1nyJdu01XhwFD9jdUhMDj/hVOOnCem2c
	 9qlOmgNQKpCctlvKqsBCAsyJe4k/QGIeaK8oL6YtMOi6bCXQtc2I7ZXX9jBsbvqqy5
	 DwjJNGshVwzkUaReImRmPxNE/xDVFrvKHi8+G8d/FicltURIpGaMquvYXYzhu4bJsh
	 P1fL9+wAHZ716WF+86WTvVGMhkIWMPz6Zj5uFxdI3sgWcIrKat4r5EuudZpBo/M32z
	 mjATlXhOgnEVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92512C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430219358.487.8176722476361882823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5d3f100d3a1a5c984adc152ae83b696ec19c14cfcc53d555421ec377b520f6
Date: Mon, 04 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754302193
