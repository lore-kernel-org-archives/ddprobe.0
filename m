Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629CB19CD13
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738965954; cv=none; b=tq6OBsRvCUxJp/LD3/cjm/qlQ4kmIajxZLvrlaU0EhikMB0BkHPB4fRX9z0UjdmaNQxbA6s7FQFtrYVV8xX7QgyPlR+ySDoB8mJdPXOKkWt43eWp91l4YzCyzf/Z5N5yTvDi4xm3ohyxz3k4d0w4XXCCB0pyFAc8QXwQbWDpJ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738965954; c=relaxed/simple;
	bh=5nY35IbiI48XnJik8433u4SSAHYLuigmaIEchJMZYLg=;
	h=To:Subject:From:Message-Id:Date; b=IOnr2ppnYTUItVqPxVxWKYEpIZE0+zjLkGHxuIe/hQDx09GcwIq+C61c8+D7mD8MLaDueXbNLgDvrjk3gpwb6qBb2O5IKCTyAuN1U2TCcaCrz52HlBVENRos+iUSMTh7NVR+LRs/H7tqXsUVVY8CcPQwuQSOIYn7CcZmzSdvAc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvfK6wFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvfK6wFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFA6C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738965953;
	bh=5nY35IbiI48XnJik8433u4SSAHYLuigmaIEchJMZYLg=;
	h=To:Subject:From:Date:From;
	b=gvfK6wFDQjykJD2v6LnYaZAgeS/iM+XE0ItVPocmqeEodMIS55GhONZx7rl5c8cio
	 Gu2UQaFJHqa8K31+nP07Gu5+7lkl0nbxcPbY1L6LZLJlhjcHmRycvTHaZuMLsmnUHm
	 khIe4bijSxhHJNOsPOWHBB2nUDsZSbPAJubknwZcnKVuQCbh+jV6z+/8km4UGbqveO
	 qgmIuD+Bq6+5RW4jaoVAHlA0zwQGuY/cgFNhULsndsHZ+1b4NP0S/isxMfGK0jL7Ki
	 svEvAEQ2UTSRRQxbHkXt2UQF8C+J6IdTHxn6wecJpY8rbg32x88gJYsnt7cKNP6p+M
	 yBTmrl84sDtzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82CCC0219D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896595363.29995.4119991977045881685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd83148ea44bb75d2ae12406238555c2a4b3b69bb11acaa0b4e16bca138e6bc7
Date: Fri, 07 Feb 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738965953
