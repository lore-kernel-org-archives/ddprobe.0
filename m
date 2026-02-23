Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE5C25A2C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771826694; cv=none; b=WiafMW8rFbDOJo0+tALeJw5QSJeadDcGDOo/AhhKs8ZcCuxgKpkmZ7GirwtdY6ctiJv4XaswHSL5mKKNJB8v1Mruw3/ud35RGNqAEjfE4QBwiBZMvdTEVyD7yKas2TtQj7O3FX96NGCQ44rEDCqJfZtdDUj6m0Vucb2wQp0Wn4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771826694; c=relaxed/simple;
	bh=llpUyqC9J2nskRLmfL5ZOJGEvyjCFsOofYA3hbSmeJc=;
	h=To:Subject:From:Message-Id:Date; b=dxHr2zxQ+xzCQhzDAtlK7YTgd/MWySLlziuq2mxsSYpr+1yGoP5WEaol3zQWdZ5H7wwlqlnnL5HinaRhNjVEza46KFFGe9ONvR/+D3sixBUgS4UNixPDpbRcheBe8XFAwPyCke3ns7Oy4Rf3TbhGR6fWbbrP4EL/sTpyg2WrtKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7rNnM5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7rNnM5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96A9C19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771826693;
	bh=llpUyqC9J2nskRLmfL5ZOJGEvyjCFsOofYA3hbSmeJc=;
	h=To:Subject:From:Date:From;
	b=E7rNnM5A3mmW4I5CCu/NnILdo2ieh05/F86ze8oIkGbPwO/WH1JpLqwu+WD8W18dL
	 94jWLIOvfWIHMi1m6cOKdSNHCFfXASRVK2yMQOG2T6eTXbpuwaBGwQ9zWkXxmKByVS
	 2Gp/sIi5OS744vk7IhheM07SFXDfvUPig4QIeUSqexIK6aT4ZCUl7gIHayzmhzp8IG
	 /7lFCdIl3L3b/fP8qCKjacSVDOZJGu/+qGeWY44sTAKAUKxERtCINm5+mtsnuLLMSt
	 1kj6UCM14reO8S/AnDPIY2tbcFtQgAvKlxNYdS00sbyE6l+VJNPkygKkY/TzKrygWs
	 rTDl5Vibwuegg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A677CE98DE7
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182669358.24083.761802600539450854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980bd56665cad61aa7bcadbb16713489e3ff59fefa0122b8af78d3464b2f217f
Date: Mon, 23 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771826693
