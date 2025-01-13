Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB818F49
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736757354; cv=none; b=a/dvk9SXISqd4qCSZPHy0e0vRJuVd35Ya8MasFw3LD3jOJJDzFjk3k+x8I5kPnQwhH/vdD9ygwu2TwkQv6K7fRNlWyOpxvw6s/m29sopOAcUfmYxQRuoVaekDqIzte6y6Ejp+c2/rrWKhQ0RzmZ62IBBXny66FFUdcIiye1puVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736757354; c=relaxed/simple;
	bh=sFkVLkYwirx4WkKhVpFg1D+A+IzlEQGEZLma00eYZ8s=;
	h=To:Subject:From:Message-Id:Date; b=rEyIQKkGIHQbAE2RujTVrcd2zsfC5QEuZ2Cp8SinICTklIGiTGfMidBpoEjOccJ8YNMWEME7cxgSD2gIx4NMwbRYSvpIsu8P/VP5Ld5M3QwkTo/AYenRIHpt5hk9ZiUj5YJCPx9Xg/w+7mc31Ts5t+MA2rAKWXSSeZ9zxampBxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqDMk/na; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqDMk/na"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B9C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736757353;
	bh=sFkVLkYwirx4WkKhVpFg1D+A+IzlEQGEZLma00eYZ8s=;
	h=To:Subject:From:Date:From;
	b=QqDMk/naeflac/javcE3gyeSDt83VyzHd0pWusJfI3WnFDh5T+0WPf1dDvc+5MsyD
	 GBzDEVcncrPyr8t6Ap5xM/8hSSeoaN0VNzNIY8zJuYuZc8dP5BGd6Ga0VbOCp5CmhR
	 +D/uWMiKv4KWlkrqk4ihP9d0+gkTfbCtBTEJCSH930Fzb7xVD1DebOvDLQecT/1O7V
	 gps6JM0c027/OAg7haRF5Wmkjp5P5GBG8mAi0wf+YCKRx/P9fDLizmGzWyg5mBktGo
	 xaQnF7wMyP/lZOH1X7CCgrQgI93u685ZDBfduXSrMrxWs51vuns6EiU9pC2v3++c9r
	 aF1hmqmrpX9yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B2E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675735357.13857.7851603128334224008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f086099fd08b57f5c67af517496a4160d756f32d0ce3280026ef791be3824674
Date: Mon, 13 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736757353
