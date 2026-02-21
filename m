Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C1C7263B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771698894; cv=none; b=Bny7X6mYu9W1sRHzr/sw7+Y64MpzaNbVGo0/JZAROKCkT5Dq92cu+Ky4HkRKJ0WzcnuxIPTz0TEGDvMBzQZOWbjINRJ3LKuS28gKJjTg8HA4Tgs6d5ZcsJXl/T77bka6j0y8XekN7Gu9PaBFlXTKKqhowBut5AlabF+HmPfuNNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771698894; c=relaxed/simple;
	bh=crrW7GDrnrbks9Zb6bcUCX5J2KXsk/RgqZuNMEoMVgI=;
	h=To:Subject:From:Message-Id:Date; b=gI6d0Q0fzQUVv46yRnRwOyuZWts0BYp4U2GkJw+pRlKT0pWgZKKYLYtTmccvH8+6rth+EMHy0MQMoN6loyM6H09J4bToYmehgaaVQrMqRWMFFlkzw2hjYLae5pzMLiWMk60nZXYbaA8LTxsYuC79dGpP3iaw1FbSnY48OAQI+4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfA62/gS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfA62/gS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BE9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771698893;
	bh=crrW7GDrnrbks9Zb6bcUCX5J2KXsk/RgqZuNMEoMVgI=;
	h=To:Subject:From:Date:From;
	b=TfA62/gSz7AY48HptQ3fg9ISy5RtEKDkxXtBnKbSoSpbAvQGQRw7/1AbycE2jdzVN
	 CmFoorEE3RVFNRXtpSWRMnoxCvZuO7WF7dNluciB57HlmiiEXcgsqZb6tXnWT0wBSy
	 trLtVgEoDvJOn8yphfRXBJ8sgerahCxZdDPhGbo25OGMp9xvFxQKgb64+Q8Ntvxpth
	 Khzo+B8SLGocLQwU9Vfd3TjdLbT5CpWNn6T1QEE6hBM/rKaaDY2G9oypzWC4QL96cG
	 XrO81yceYbrBOWQYcRuKzor2h3e1WALXci7K7bjkw/MOj7jSJAehFO5HQzHkJ+YCaL
	 XOXaL4zpidlJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F56C61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169889359.11014.18252091060150554191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068dbe7f5fef5a5374e2a7de4383fcdd49f5d5026a73753ed6850e43af3babf7
Date: Sat, 21 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771698893
