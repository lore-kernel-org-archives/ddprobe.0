Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDC7332EB2
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763707914; cv=none; b=OToxHr473V76o2OuSncQ3nqBjhksW78sbX5xwnwscH8JmGsTtBaorxbLnytasAF3+H1Ut/ilDccDkx3iGblvyzh7/pXov0kjZ6m7G98YnME/Ua5qIaHxiNKVSD8ZfLyIFNVd8PP2iIxC+lgjiYzgIMzkzmtggJNDvnV84GMas+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763707914; c=relaxed/simple;
	bh=8CX9mAKwownXsMCIFvUOGEwaQf+x+Dz5oSM+6JWSLjs=;
	h=To:Subject:From:Message-Id:Date; b=oB/SeOWSIb0dZbbiZ2i0ol25J1uahN8VNRz+2D2tEwqfmsX7Jy+Nw+u2DjMgM3F0fWkKGTN2ED2l5kRB6yLc+b3G6Wm/IQ0BPS0NkYHpmjdDEV6p38uGq2iZSnacncnxYE+BDRBdbCdoeroGVpB1hoHEJEiY0WPJY2ugSK6NTi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1AQd6tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1AQd6tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398BC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763707913;
	bh=8CX9mAKwownXsMCIFvUOGEwaQf+x+Dz5oSM+6JWSLjs=;
	h=To:Subject:From:Date:From;
	b=H1AQd6txaQYqJ+l4FrIOfMcvrGxPTYSuAhOtOMuJx3oLl3Moo22Cz7IHg1mZqmXcl
	 PvENpKZxDs7+L/6RptURWNM2QjXNyDgNzW8cAZWuOHeUyq531v2Y0jxGDkGst25iUr
	 e/WNhJoAy2lpWI5mlPiWdksweOtw/Fa4I6TCDKbIAvQgv+PvRKIJGDMGnDRMJP750h
	 AfVVyV/S/Fc+7V4AiDpgFnfpOR9xJEtwmIiRu8AxTXLb4c47+rjRm/x1FgrZFYJkPd
	 HYw8+NLSA/mS8tIL/Ux93qKX3tp3YQcAjo038G+KyS/fh4ARlVTe4qrzEx4LUaJck7
	 n6wVWQvGcBNmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EDCFA47A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370791358.6217.7684096390218208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19afeca313ad4d07639130424c6f332fea495a6a07e7225705a8b490e48249db
Date: Fri, 21 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763707913
