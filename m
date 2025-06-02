Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DD415A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748850594; cv=none; b=EVxHA3Am0Ept634wkx9sNGRZEIGwAnVQpAYpGfn85MxtcAmVYRBUdSaxvhwSlAWkRVLG65Nz6UcW50BmdB91djWw5tV+ReEY0WsMNl4kCWfxTF93DaU1xd/uZp/QLWgR18Dsbqa1Na5ZTNFtZNYqn6tU0GtgKBDWqIFU3UVQcG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748850594; c=relaxed/simple;
	bh=SYZgWVkgrI9huPJau+J5JB9QBClMdFeAahZIH5bJqFM=;
	h=To:Subject:From:Message-Id:Date; b=KGlVsm68i3N4t1I0wSj3cjX9kdpfU46+63kH9rBK/dt9Tk0+4ANDcpp7mKtzEBBeQSRT4NN5g8jVNLnN8nNCO/IMJhZ6IvyKNsdV2EaYDPruqPNZTKOuyCI6sGl4HdVggoU+68E4BnWcNHjXkzdPRfnrpIDQNrnPFg1Dzu0GzBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SitVCOOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SitVCOOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748850593;
	bh=SYZgWVkgrI9huPJau+J5JB9QBClMdFeAahZIH5bJqFM=;
	h=To:Subject:From:Date:From;
	b=SitVCOOEXO00e9rBksbf9ZV4Iyx46ZwII1ckNi6tpMT8IcUiCl2zpfVgWv9zaG7t7
	 nZYSLE/dBNt0vBNwALSVdmBQ/KnUd2BPnYXG0FbflzmKRXNi+J/o0bSCirMHZih2Du
	 2F4HoRUGYtcnbtEYAGch1AHdOHgrip/9RYvWGetsOCuVsEOJJTf260exl661uKC81g
	 db4dCNBZv7z4g0pgiwJ6PzNA+6gSNaUHx9h+t8+yxpdN+BmzFyH9Ex0C08MwYv6QqU
	 bpM3W2c0Xn7YRLUFjb5r5Kq9U8yM396STPW8UesMxkDIFa0vko/JkTuBf0/eW2/4UA
	 nkhM/p3mEGXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D4C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885059357.18922.1249616885633587946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3ced998ccfee417521ab5c31c8e59005c9e8aa670f6194e08561ffc097a422
Date: Mon, 02 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748850593
