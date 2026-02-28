Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FEC280336
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772285694; cv=none; b=Awfyh7E7m9Zu38S0vArlyaRBk9imLTWxnhEsspLbzil4YT1peFhPw0TXxX3GaT9PSCLbCp7zRYj83bfkm612wJpN7WVlFNiNEwdYyjpA4OLj4Dy095FgIR5/1HAz0Qtf4FeGo43cBYsMdFpIJTkSHtvmN0FRyPEm9ymyyx4apT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772285694; c=relaxed/simple;
	bh=o8xOZXbbOd4kqD5kCP84io9UXbqHqhXTxlFHbRY/R6k=;
	h=To:Subject:From:Message-Id:Date; b=rdhfwnRoxYhs6I/24ZCPT/RJz2IRGPzibXI7dvU2JGCxhCfxpHnHqiA0giGnzx0T1cO0DUsvGmFcw4iD7wNBidcLeKibi7Z76ofh0ZERgPuvR+EPgCeEe6WuEt23PTVYxrP6uKYs6vi/5VGeO7j4so6Ho8GhUdEt3Cpk47dhVeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRryOI7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRryOI7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1DCC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772285693;
	bh=o8xOZXbbOd4kqD5kCP84io9UXbqHqhXTxlFHbRY/R6k=;
	h=To:Subject:From:Date:From;
	b=lRryOI7BXQaYZ4ESkWCcXqQsV2Jj9ccVGZOEGhPhqJoeOn8nGbUbsEfZr9QGRx44/
	 ziANbasOoDhnS2zBEY0M4RvRtXuewt+8+DYpHQtcKMqStvy+8QwcKzr1iU0FbPoOO9
	 2THmX+lhfsqCDQafjVqNMJ7gs1Ai667NXd5cskm23l9NAB7FlIlkj9Ncqj+bOaFvLi
	 kYgCEx+bNr2ax+aK3dvyEp2j0D8lvwmy9hVD0gf9pTbYRwMc5f9QN56GQ1rv92IzBz
	 mCx3a6aDFyTkfanX9snF29zrbWM8pjuNsOeEH+7Iu2XIXv2if5sYxhPehtYuXYWH/m
	 8mJnPCXE9bpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EC7FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228569359.31746.16590952866989379301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bbf2cdbe077b554e6c870b9604839e22186a94cabfd238fe32754f9f19389c
Date: Sat, 28 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772285693
