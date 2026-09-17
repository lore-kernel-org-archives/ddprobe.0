Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89F745FFC7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789630234; cv=none; b=tmOjEXZjcKV16wnHW2AKX4qYqHxaBrBJCtlv/vM588G5QIWm+ULEHRugTRjWkKnVWFBcYnkzL3yMfFClyIvids5l7wVGyPqerriLflUNUgOhnW5qwhk55onGzUCSwV/ZGUIDN9YnSEgYH9ZZ1V/7T3LLU3rx9LbNV+ByifJ1s/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789630234; c=relaxed/simple;
	bh=hLNuzt9OjtcPCj/4d+JshMDgjvF8I6Uxsp7hhC4vPlI=;
	h=To:Subject:From:Message-Id:Date; b=nYjdZCR1QoKCYBbp6zF0u9SGiOeFviUtzA4M/Nffx9izPsNa1WZstsRp+F8fyx4jgP4p7ONczrOxaIDbCCRmc/czxKrhTqku+sV3fxEEJnhL+bote8jE+nqljCQOlulgAuX559JXHhdBIF2F6E5Pv6EJ/Qf0Z4kqdbh15KDyIy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbE/HRXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbE/HRXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2914C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789630233;
	bh=hLNuzt9OjtcPCj/4d+JshMDgjvF8I6Uxsp7hhC4vPlI=;
	h=To:Subject:From:Date:From;
	b=nbE/HRXGWTUtZpuDkyBEdSZYyT+f7FZOOyvtZBYWQO6lvsDzm1sPTqgcxQg6mwi0k
	 HJzSX88iiAa6tq6oVj2d0joE0lYY2+V0G17AX8EkMxM0WwmLRSoVDshMEcN04Vfejy
	 tCpRJyJHdhliMoBDKNNIt4QUOdWxKVA2Sn53fHmynPnKu3yoOyEqQeKYG9/mVuIyO1
	 np4/U0pod8Q9f8XXTtfLjKhXk1r+vW6wCexi4zTG9T4OVFG8fYTTsVZM/mZVXRTeME
	 2XSlTpZA1bmXy07VO1OQtz2aVqjg+PdK20sf1lyk6wL57PsjZ9jL6WRgGdcW4V/dBR
	 i2VHxcrsq251Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADACC982CD
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963023369.32761.2953453131689593142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da116ea08db9ed77c9650bfe275cc267efe0236dcaea200ac489bf805c39ac89
Date: Thu, 17 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789630233
