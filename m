Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F8C1A275
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747294794; cv=none; b=X1C9fug/DWSd5g5ncgvsAmob0+fPuPwV+nHgklJuQCbj1pHjmC1ZMCGhjvLi0LKNIRpJLkZBwOEm1UhkwwmHYo/GlIjYLPN80cSI1gVwCjykQPioN7om2drYQ7k7oVjdEkhVOL52fqnnJgxYvV0W/Knmh5X4+Har3Zziv4zgafg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747294794; c=relaxed/simple;
	bh=vqxlRfIcTF6Du/9gxB4vILMZ1DTnSGEJLGJAKquNZog=;
	h=To:Subject:From:Message-Id:Date; b=BX4paUMkNHktUdikIBGVjXo/WEAiStVSbgF+rjNgFZ3FepGh/scjbzw3F61E8BfiTNlBC8aBHwCEdJGl+1WsTWHU2GXlIOlOonwIdruEPZ4URo1Z2QtywoRX9LbZWHLyu0uQmDcW649hNWpP81LFLRmJHHA3me6x6egrPvz8lYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6hQJsO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6hQJsO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F10DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747294793;
	bh=vqxlRfIcTF6Du/9gxB4vILMZ1DTnSGEJLGJAKquNZog=;
	h=To:Subject:From:Date:From;
	b=j6hQJsO2YgpeYpq/xZ0Z290LjS+AN6QN81zRjTRCHhh/qcdH+2Z7TEPDY6I5kf2o5
	 JyOxcfguT/YEhXFiYdsLhNqW4loPJTIcB8dh+FYq6egS6fHCH77nC4Lj/BHzoMfIP1
	 EZFSB9HnAJQgOMYfL3RwB48SGQluKsAJuSMneuG53jXmMth/BMJj5Gb0TbaJX6SYtH
	 el1t9FGor2yR6JT0K9iVo89EG5cJkJkomdtDvjJrYWjnF/5vmI4lFg5PSqYGIkO5pX
	 TBdyUnek1Quc1bj4xdha77k3yAdl1hbtnilyugYI7xvy/YJVAy+fq05ZyFKtpMBD2g
	 nTNMEax7aWEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F390C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729479357.12922.3791150104149971803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5477a8b83a93a3e652e1eb17e2d970457ab5347f3da2e5cb226d59c008e1414b
Date: Thu, 15 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747294793
