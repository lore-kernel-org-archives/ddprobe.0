Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C841EF378
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743547194; cv=none; b=efl7w2xJEF6RnuD6WKJwSVhzRFnTkf/yzVNqDBIAsAzW9iZDQUaQzOVtkfyKul8WbPD9EWWyL/W56vyOTkNSIeWKyv7ZgvASrHHtKke6SFnScFVpmus5O+OHHx0bmlZbFt9TuW9PFwHx17MmV+EW4y1cSyNEQSiBS1oIshGhjKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743547194; c=relaxed/simple;
	bh=XLWNo0qZIXusFZw7rAFDA2waJsDvYnJu0LPNVSQQmTI=;
	h=To:Subject:From:Message-Id:Date; b=BVPjKxIbGzaoQlbDwP3c5hJnrDlbUBf8LjfKJfk4ykSdrONcXx4XKD5dQFmuLi3M6gp9d+v8wbmYOvZCWhC/9/aJ2JVx/9s2OejaHfvhqj4DBjUOcLdSyuX6K96z6MXYwvgbe1DQgSNzQq/70zWzWz+CzvT0dGO+TvaCeGpkWAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOfPO9ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOfPO9ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9032C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743547193;
	bh=XLWNo0qZIXusFZw7rAFDA2waJsDvYnJu0LPNVSQQmTI=;
	h=To:Subject:From:Date:From;
	b=uOfPO9ZIvPyDGFsLL+F1lMB2Gdm/RgbhHuL5QfJmceSjo8v50YEiZ6uWfOqRu514v
	 l2/7j4pBhtBPRMuNaX7hbmfHRgtIqF0pTTESm0my4+WdzLCNHBljrLa2bMKvsdItyn
	 0yQs+JV0RXGg5r3Qu6eqnidd7mz82kd+u13Xjq7lmoh4odXsUf223qGfXkfSjh851s
	 WaKApVAA7xbzF9i0meN6Ab1p1ReuEdXGizsBjplshwDuF/FT3VD9hsti57eBSSNfsZ
	 27g1rIHlvdOVw6QcKxP4KvdF9BW2RDZCCmxiDM/zgfD+xEfLT+iA9gM0QQl/kZ6z2R
	 bYB5LOmDt74DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9690BC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354719360.11156.15692300637121865170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68c16070348c410b50851708def028d161650aaf0f6669e12785973d3e16507
Date: Tue, 01 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743547193
