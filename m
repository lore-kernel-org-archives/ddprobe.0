Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADDE33D8
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754810394; cv=none; b=qwrsKil1ybd7jaMHOExkQYBn56ugIRcXP3Eqd3HBR/tXtNZnklihfaMvAh4nz3Z2zYydYKPadTAaJvJF67RaCye1Hgv993iJRxqAiQrWVAirIpjztZbzCXz2bVoENIMBpHm4Nwhkt6h+I9KJgLEzTRrO5nCO7MqIhSK+/HN6R44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754810394; c=relaxed/simple;
	bh=Rl6/2Q5d1LuFvKADlbMWAPnsuVtwo4ENIinuw6b7PY0=;
	h=To:Subject:From:Message-Id:Date; b=u2FQDHYMmasRCxNCKFt7EwXptfpMn6DfBnSi4B7OvV5CkxsxWYxib5zb8BIygnS8gHwQ9ZaeAo4abxUxQ9jRDPfq1QIE62Qjr4l9FR31RgMy5joXJkd8tR3wD/lCc5M9W0IZhwzYALgwzEfQ4m6FAfmCMS1JI35hWrw6nlVdvZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ntg2JbvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ntg2JbvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754810393;
	bh=Rl6/2Q5d1LuFvKADlbMWAPnsuVtwo4ENIinuw6b7PY0=;
	h=To:Subject:From:Date:From;
	b=Ntg2JbvHZKjnYmYaHf1xJYbXXrgQhJTfwdcrrwvgEfq7wZVp7LTz0opMy0XLvAGrE
	 FZDpaf1bRbl6xpk/SavzddSg05ESU54ecMmvTjenabfSr2/pPvalFSvN5bqICwA7lK
	 rDfHaQLcXUb0WpPq1tn4q30UG5KfGacgLmXnu7Hv8MKBFEZlL4+/FEdSvgBoElZebK
	 1C/pUFyq0bvvAOaTpVuF4Pn1eFnom7ZHBsEAWx+oE04iwOzgfXzlmkj5+5vpyvY3d+
	 cQREH9/d5N6vS5Bm6BU91cJAagOxkbQdDC6Hxe9eLqXrYbJGkXlxpAO4n86uhuEJky
	 UxD7ezjzRC0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD3C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481039358.4043.7230075032174446480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21270bb5bf640651edf2688ef76dc501a19f90404866b77fb9385acfbf7cd7e
Date: Sun, 10 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754810393
