Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302A6286891
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776692854; cv=none; b=Nz2NZKz1i/mEGo0fSm0smkiiJ1lpfJWP8U1Y8A8VBmV+q4Q/e8lGEgrHRJ7LPbggjKuz/iRLp4y0oHiP2mWJQa1dOng4o46t3QUT3sm/GdeQXDwcbhNwmoXeXBFRQIh7PFxRyUitb+mkFGGevA99oBrPTD4PKQO9r4xWyLQs3Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776692854; c=relaxed/simple;
	bh=Wp5wZxySgiOliVE8c7UvJic6DC1W3HtJt6YrW/l4Zsk=;
	h=To:Subject:From:Message-Id:Date; b=rC2gd7wqMiuNQk/8D/40plx6fHJ9VP5AFlmq0q7YcEtLLePaqTKCr9nX9ZqmKe5lXLmhqAKOR0eD5BuuqlsE0y0lzUsxeS2ttYgu7/++JP/ZhAM2r8cy89mxtwjYQq2jRNfaMfk/R8AkKZxso/c7NOptL6Gy9XpX6SfKfIrGvGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pacH9+WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pacH9+WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7797C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776692853;
	bh=Wp5wZxySgiOliVE8c7UvJic6DC1W3HtJt6YrW/l4Zsk=;
	h=To:Subject:From:Date:From;
	b=pacH9+WXs3o3j1KOFE3QsBjSgk2aQsOI+WUJ1bSdlBG+N2JglMEfNiIdzN1rE1XtJ
	 ubU9qeWdhTbz3qV/b8KhtdtqJJwPHY65sz9ykvKip8L06uQY/MGlCxTE57DYOqMLi7
	 wgDzidJ1csebDJRtZIo6NJmqBXKVE51wj4QgG3pRgX/GUbg/PGjqLxctWYiygxEBxE
	 XgPIRs2/rrxpWbk7S1t+Y2hrJYLcz+mMmexDhyiRTPZHMGA9rqnmpvn8RJFBRdq4jo
	 bt8BBj9yDNllHfaf/kUwvz4+GmtRdHFtbJaJ6b7ibk8mAwD9tK4wjBxJ3xOgjyBlBt
	 43I6F+Pq9mGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA140F588C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669285368.6345.6751917307900889031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f303e1776afad46216dda37b1d8f4cb6f0756bba19ce1003670ccea9132b9a01
Date: Mon, 20 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776692853
