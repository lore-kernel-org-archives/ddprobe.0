Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3373814D2A0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750421994; cv=none; b=ABVcQ9uvQhTce2RZBG6Iw2qxIfsWuTeAXHdFN9QVjPVZ8388+8dzCBpO58RUvAdH+H+r+DAGEIaZLAZq3VsgKOEwg8XyXiC5zo4eP4YL2bH00d617hf6rGTVTaqJwMdGgBNHP9T2S6jfLzs7xQErAZImTSpJlaPuZ1jAcq7mRv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750421994; c=relaxed/simple;
	bh=LIrc1/S38hx4EUzGNtLMsHwme/QUoWldO6vk8l2v8r8=;
	h=To:Subject:From:Message-Id:Date; b=Dbc2ibVh879M7sGmMKxWI/boLhAKyYLx3zUIMH7VhqSTGU7FXY7g67rjZVCwPVSKzVjXeQ6ZHQ61W7wRTijSjIP0qkMG1m3L0djsXIgVKy/W35Yuz0WriWxH6nhl71SaqkaRjV3Xw15aGLbQU+l6L9kqMqQa9nFYR8KfyUFsFC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+9I/x68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+9I/x68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A059EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750421993;
	bh=LIrc1/S38hx4EUzGNtLMsHwme/QUoWldO6vk8l2v8r8=;
	h=To:Subject:From:Date:From;
	b=R+9I/x682pORXw8RoeuS6MC9O720ZtklB1LMVoyRaWE50WcOjp66MlP/2BjA6IKpi
	 pP8tVAuh2KATQG0JAmI7tSbvM6KZfrffnKzFUKjkOCYVSTU3I+a7pCCOO5a94toFcP
	 VPQVdSmQSqqgclYZsxCjaJUtCOvt2fGUAfKLdbXlY+ywq1DautV6PO7cX+YT/4fsvp
	 wglssa6UAN8PqOSZh9C8/pn1GByD2UzUfDLYw94ghxGkFHk6mSy3HjVL9mUYdQWOYq
	 zVpPTDXLWbaOii5er5xYy55uzs41o8AJ5sQcf/wUuEKuYPcgA51ofY/IogOtsO5fBb
	 WLCpWb5B+zu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B8C7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042199357.32699.10734486219396322400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef312c1b89e09c89bf015aae98e4c465ee81b39cdee786a80756ab4fd986955d
Date: Fri, 20 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750421993
