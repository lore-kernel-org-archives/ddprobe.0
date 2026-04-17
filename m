Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203AF33DED1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776440854; cv=none; b=miDRulk5mrHuxzWb2uwn3QSaprbjDoQJwJH3iW+cPVDyuPQz18o/u4W/67BfoCa/5HU/wX/KWiYUytWPPwpdfr8o6Y34KXcCBe/CPTn6R/AWktdHnJ5K4UrKKgRz6u3YUke7Ovt7Zw+9OswjCXMcbDKEBw+ErhS4btpQm3XDH0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776440854; c=relaxed/simple;
	bh=KhV1NjjSlaoa5LEX8gyZi+Nl/qC7rbSxzT4aCV3rJF4=;
	h=To:Subject:From:Message-Id:Date; b=hO/L2LbOiEmFlk2DnWV+UrDOUNEEYDLuPzuaAmWu371mPfQ+tiNHhJpqpu2BTUXZ9Rk0jnij6XRLzdVCRuurZpE+yWV1miG/Pn39682zyF+I2/YOg1qfmWkN5BauMXFW6y3zn9AKwcY/y0Xskv/NTcScY94BGXlLWKzRQAUw/NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMezhQoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMezhQoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DEAC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776440853;
	bh=KhV1NjjSlaoa5LEX8gyZi+Nl/qC7rbSxzT4aCV3rJF4=;
	h=To:Subject:From:Date:From;
	b=tMezhQoRqB191aFN9uZV83fSyDM4RJoZEAcu/Vy3iFSnWfLPmerTkAo+ay5o8gPtg
	 KXf+kke26+VTNzk+o3HhdSscmYeW48AQr5U2Lgtp/dwzmg+5FNr7U3HmaeQ+zFhyJ7
	 xEkAPiTx+SC7KPzE89p4Aknz1trH0jVJwuW8fWd590aaVRONbqZyX9XaS0uO3BLq1y
	 QPu+PXX746gA7sDHwXhAqI3ual2ZIX2/L6yH8RanbmJc1uSpDVpd2EhNoAuAG5GUG8
	 hUXi5PTlPQhXmLmmGv1alRpa95XQQxBaFl98kfgZ3R2qYiDVerG+2F8fsexrNKeD+U
	 Rot2WlEJSeWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11AF436B7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644085368.25587.2752666963651454039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b946ac6db751c638977942b00b1b6a08ed34f8a523071fbb071d619fb27a373
Date: Fri, 17 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776440853
