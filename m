Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E091C2E266C
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755844194; cv=none; b=fdtNyaqWC4Q3qV1b9zbr3XMLA0CO8fYFXFVy+v23KJruxAVlgdl8mndpo1QDlCn3Sq2NBd8ryqJ6gQWXQaTmtSKc8HpBlUZ3v7MdlJaYrOfx105rqreYRkGEUCK6RtOnYAG8e20Q8d+3WhDDzSAlK5e09eVoFLZbSD4d/9TQU80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755844194; c=relaxed/simple;
	bh=fGl/9Kb0U0qlJwbjtgtmVs8k7spe7q82/+q2tUBx8O0=;
	h=To:Subject:From:Message-Id:Date; b=k2uDglLZd3qBBJ/4WsK8lU7OAZBDjFFldmKjVzZQZ3kx0ztw0/CwBt1r7nkdcdob0ZVT2i7SFFDmFGuiOQPi3lrGnh6TcjMd+nq890evgYHqAnk8WpRAbKDAxrqBnV0kKxctelByUqa0d6HA4aAQGA3XrS4BdwpaA2QzahNdSJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvyoTFz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvyoTFz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755844193;
	bh=fGl/9Kb0U0qlJwbjtgtmVs8k7spe7q82/+q2tUBx8O0=;
	h=To:Subject:From:Date:From;
	b=KvyoTFz1+iuZWAiYO5H3p5+sOg0W9g3MGnQTGkkCvws3YV0qwbStl3gtFl9VCP+Fy
	 Xly1pHfsVJt5lDsXHOHdnnwYjK7dq/D8Eshiyo1DOf8JwqTE46aWmc6V9fhjM/7LyM
	 PokiDYw7afWyGsfcujchovfMfsraN47cGYb1Fb2rwRHkvEeFfjuIe6zC6eadYqiBg9
	 DgHQ3jerGu+7U958NZVGHOQT0Kpy40RSE9BhNs+12GOTfrK6efGd4Z2HHkjRILpnGq
	 pIwWYFWZGj0QdRjcLc+J5QkcqJqEjRfemNpqwjj5VlmqJbN7Xj8e7hhAGMwrdfWfYe
	 ajUu78iGNw3GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD6CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584419358.21010.10356541176294836912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251c34480cf6a0fa4cbcb670440291ee893463330ffaccc8bb60f6f544c0529b
Date: Fri, 22 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755844193
