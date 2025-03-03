Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35885210191
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741004934; cv=none; b=fwJWJZduvx48jq3L+nPmLB2kQLXbiUvT/48oxvXwaDpUzHW/2GnWqm7tGLfBUYBmyQif7Njfx/zZHWh8gGTTBc3WaHeodbhnCnT6/aoLg/fpTabHDc5yhz3HZWs20V/5iIitX+Wu8HfDhs0mv0lFPu5tN84rn5jxYbSpDPtahiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741004934; c=relaxed/simple;
	bh=LgbD1yJn2i81VXxwxXeenh8im2Km0uBqjcQMofhHYJY=;
	h=To:Subject:From:Message-Id:Date; b=cHNFdIGiJo/mIXII0eWYSUP35nwWxcJN/KCNAmnExkTDdSmZD1hSjaCrOOhTh7v7YkrHM7my6F+Nt6FE3g6I9x5l3Knef1nNPNFhiXHfnmMNNU4VvPmT8/FGuSekUl/ixk4AuJYzELWjvPaa4FJR7HGjiX2+6aXzcXTAPhUndFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okKcK7i0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okKcK7i0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F51C4CEE6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741004933;
	bh=LgbD1yJn2i81VXxwxXeenh8im2Km0uBqjcQMofhHYJY=;
	h=To:Subject:From:Date:From;
	b=okKcK7i0eQ6vK4j7xoxFsujlQ1VmPCwADYekQe0El8q+pSIQweLRrYKYYpH4Ub714
	 w0MdZ5dlQSMAkt9iM40EJ8QJh+IIzcHHuTch3MJuDOCUcCCqmDOE/ONISjhLP9fLqd
	 an1reBbk/qK7vSzlribWm1TZfx0XtdATOdqh0JdufPsNudutUEnvyJuD4YMw1EUZBS
	 1ChyUMp/KPqEhpJzaGgP0ObC8KNeY0MSUGktC99PHkQlAv/8gZ/qo3nOAOWTTf6bup
	 6DGlxiOnOR2dKV+MWYtXXi4RVUOlVLbqiRXGJzR4LUlX2Gk3XOaeu1KM4F+n1l8zby
	 S0Bi4EGmPuGTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC7C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100493357.18895.10790782341462729582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b92b95045f09660977114e362ecba3bc694b5457508e0a86c57aba097f3a17
Date: Mon, 03 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741004933
