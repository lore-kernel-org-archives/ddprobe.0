Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B3C221FC9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754950794; cv=none; b=BTxLu7nbb4LuYs5YX2KajVS4Ql4Utzg6C3iqrQYgQLrcxurgsmc11GHQyWVScN5sfKhZLn9T6Eg5JrWixZ1ViCfHLyIfOzxcTlGWkAc7mnLs4J204f8fVnC8Ygx5hmz12oIG/T+w6sdr2Px1FfRloQfoU/kM+54PdHd5wkoI6vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754950794; c=relaxed/simple;
	bh=RmWGBGA7XmDQ/Ys6avb/3rqkViLLwUBi6TQ5PfwglL0=;
	h=To:Subject:From:Message-Id:Date; b=DhCwls2ixkt3Dwi309AdfvX172wUCxWEzCi/Z1+eFbUJm/gd0AJNBTm7gnK1jetjJjQMo0WzfsQzYryGqezbdUPfrRiWnwZ6xD/vO8OgVJJk+Z+7fszNhwZUzPXX2arrA7JsGb7eDQL7i7Yn57EUIieVsKl6XQBN9YB/S2YjcXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svxIdcOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svxIdcOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D103C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754950793;
	bh=RmWGBGA7XmDQ/Ys6avb/3rqkViLLwUBi6TQ5PfwglL0=;
	h=To:Subject:From:Date:From;
	b=svxIdcOhUQo+zjhTEyl+2WzoCTWP76QQoqU4kMO0xrsD9CZKD5bMB8D+qlIpuMefV
	 pXCP6vFWvyipFxg/hC/OhEuZOCqxwgH9MDKNYi6ume9Obv2w7q8FduLylYZtzDdDgs
	 CiAzlPUHFg1S0gnnLy39tofI4iQ7RwF9vpEjEaQmdHUlkwfrvrefPcN1/emEr2HJyg
	 1Ob0yep7gOMxu/c0POih0VvsyTnzC4yRLfhTNG9Sedc8OGD3Ot7QpwvvCmBIFQhylf
	 2duc+Y8WJzpSUTBd0f6cR5EQ2Gwt1hpsp1lLFO5l+PcEd10VinMCaYmiontRAy4jPI
	 6kGH8z+kyvYTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA80CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495079357.16411.17306640176024550373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b54bb6e9bafe6f1dff0912abfe4add55c9771fbe8eb0c03603c062430c18af3
Date: Mon, 11 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754950793
