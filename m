Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D3438F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719023543; cv=none; b=iB3+tHN68bepadCKvTnWOuf/vq6W4ZHHSQa4wQKbFb/UKUuv+CvROGyLOrKcnZhNvGyZ4ketGxCxoAMy5CLJth6stkq4bCmxjyp4Zw0y8o9b6mvJBUrdw7U7URHzwrD/MmEA9MkqWmqxU8jyiBTnJfJuYUvFCz06hevjvGyUKTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719023543; c=relaxed/simple;
	bh=xiz2FkAiNPyYen1X3U7UjmSGe/HVLSc1oKa4lTkxzU0=;
	h=To:Subject:From:Message-Id:Date; b=ih736DwkI8Djk2BSaK+RzlO47mOCWU2Na9B5EhmcJj0OfxL7drSLxwAoixL9VVFLIYx6P9L0w96sLfWooa5/a6QlBfmicw0tlTmxgL9Sk1RiwhhDJgeN3e53Wb3G0XydW5sUgWOBBJIDe0gJCTekNgJdy8Y9D6f83s6OiZGQhTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izYSsVq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izYSsVq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB40DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719023542;
	bh=xiz2FkAiNPyYen1X3U7UjmSGe/HVLSc1oKa4lTkxzU0=;
	h=To:Subject:From:Date:From;
	b=izYSsVq8n4Wf39LBOs29BHMo1rJYtYGvRAJlGczrbjJkMF4EepqIf8QyiekP2tPNR
	 nTKcZ7u0Ql9ziM0zK6JvTiELO4zXU93tpzRTc955a1lgOSJw09m/IQgo5bN1dznqio
	 F8E90IzPiWIQfMc0Chgv4YO4tJDo+eZwn3KJV87WzxXKskxsNpc8W3wU6p24YW7pWl
	 YPYWkdiT14SOhRK54Ho9hi7O3rvY+pCH7ZlkMuG9pavuHh5Rv+bNqgkbXnmjQAmvZO
	 MwMSqCjm2JcbCt/insVLicbNfKUdhPHpFSg1derLdo2HyoybG9d3Z7MBWy8ViEffY1
	 38/Ddgs7sFERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79FFC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902354277.8333.17153939285795980753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f164cf711c96ed37d424ea608a4020167f1dcb29abcd451fe21ea09902367f3d
Date: Sat, 22 Jun 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719023542
