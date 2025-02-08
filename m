Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E309243946
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739046954; cv=none; b=B+TILHIh5jeLhhgSbABfsNYYuBwzm9jFiqmIhhy1gYTx7fPeQZ4fdLLN7nl2TD2JyhehKYk6C0LnpxMz3/JTnX1GOkWlEuXvlT3YPVTw0Gfv2FaSNUp42CPV2y0UYileYbSEE7eqsQ26lF3oPC+0E2vYi3jM0QqZr2VY+Bz9UgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739046954; c=relaxed/simple;
	bh=EP4bA2ekN7LH1b4ZJGpmzS/CVUtR/m1KjG9sAp5z8jw=;
	h=To:Subject:From:Message-Id:Date; b=Z+v32CjAqhECbALhKjJomUznyk+Y1/i4IeHZNkWylBL/DhJ5kkfdDVibwSp/g1rY8FWrum1V4aPKwGoz2VqBMT7Jsadyd0NFIauRykpna9U8VSDV4SK4hYRr2rX/A3hiZLJkM9boxltI4hej4kHYQ3jEFya5/4s8nT27aVunL9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eh4GuKjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eh4GuKjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37BBC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739046953;
	bh=EP4bA2ekN7LH1b4ZJGpmzS/CVUtR/m1KjG9sAp5z8jw=;
	h=To:Subject:From:Date:From;
	b=Eh4GuKjBYhJRKgE+BGNR1sxQl+S6MQKQmZDjIc6bYlnyplRhtQwYhRqXSJ0UIeKtX
	 eLFsWT88PXqQhKTq7KaKL0D0hS/j9v3m/8OiDkRM+wjYDB1+Saebbzt0/0FriFSmkR
	 o6HAgWBGKl/uHQ+Q8/Rs9AeQmXEYILJz06/9Dg0uWQNYfiISK89/33kpp3Jy01DXon
	 XtlO6zW/QN/44iUwjtsNHdi3FvHu+54xjNUdY3e0fK3bEAOqg2hTOXucsGGIZp1LbU
	 d8fgVbKgNRTYLj6rPCVOigab9EdLJJejCdg+6iaw+nwy4W7ovJ/6xPeC9tof9QN0Gx
	 lDPsXmaADvesg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4135C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904695372.18944.7776800917498172843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e429b55188bd8a7253f23a6fbd3d41ec17d4d6b245f0d64dcd325b14578895c0
Date: Sat, 08 Feb 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739046953
