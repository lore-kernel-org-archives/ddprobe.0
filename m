Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D2A33B951
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772451294; cv=none; b=SwBuFQtWRjZCmdaQbba43450B0IJ/jGfXtFEGrXggazllln0DFnJzh4/4KJ2FvINehoExaCE50x5Id0LABWbMJu3q3Cf+tMG5u4ydXyEBUhOkS8xB3N5w0Mz/m17Q96r0cKqKFuqZ5JE7Y5VpBtCPgQ7holR5MRtuwCjuAuQtC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772451294; c=relaxed/simple;
	bh=XhjF66Himn8yDvOyEZR4lxU5dMoyhqD2vQA+eU+H3Pg=;
	h=To:Subject:From:Message-Id:Date; b=jsbehuTuOPLZP+qGB/o4yOiOhe7msweA+zzmXLXpxRl59C6pOJrkj3GpkyLvS5yZ9nAACyYx5OfzDbGXIxIO7Wftv+YDM3niuGFCy2YrFL/1RfKrW3/48PDSueNw5gcduHH6F8HnjyPJDsWuhbgg25NUkFZxfyJxdUcLA0WdB28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPEDSoJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPEDSoJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0843C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772451293;
	bh=XhjF66Himn8yDvOyEZR4lxU5dMoyhqD2vQA+eU+H3Pg=;
	h=To:Subject:From:Date:From;
	b=qPEDSoJ7itqIwmmPMTIqBvOKk8yDdjlDAStuRbOnvljBVMhOzN2FxW0LNf8JDns0c
	 HKnR4T9W38t/xDQN60tLHrmJqHVNs+bFT6X0H7MfgcwZ3qZHo8wOAYAo5oms5y3uXj
	 HWBB+zmjTh0T91ZXQS+2Kku+DCDLFzTdNt4ZtjYTW/XdBSJ+nX6d1dnQtWzgLC1J65
	 HrdKvKTdklbdMaEGncQryxVKMCk8CsXSn2QbuRhpIXiL/8TuB26yIkwo57BI24GjEW
	 qkmEuPiBo+XwZQgztWYW4V6Uc+4bI+LFEoRPr//ebMCrJYOi8mqfamYlx1i7mmDYNL
	 D11QKGUESC5xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDAE9B36A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245129367.7686.14212481042198296328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f50adc5a8268c4e0c3e8158673c7f101ed032d1dce9b8f913e8e14fb1aa8d77
Date: Mon, 02 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772451293
