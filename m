Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A6B1EA7D
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713625223; cv=none; b=tUzq/DxWCUzj6rQ8vEevQMkf6ohpLcBbjunRHu9JmoiCkx92IisGIjRe8vozIRSKyfnqk2Ndg9UXI82TofyB4ViNoZxy6axcgDY5Te0bqH6MXqdgfEeBJJK0f+rUEYSMyQsl7TMTh0nuwNe4r2zD8vNxys7YYq03BmbV9RVBSWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713625223; c=relaxed/simple;
	bh=HpFHu9oWZ+I9CvgnmaSutbYMDSwYHGG1JNsr2pQlR4E=;
	h=To:Subject:From:Message-Id:Date; b=Y6zVr97kLDAh4/Uj8mrE7U7oZNv5pKab6TcLiKQ6LkMcww5vS7g1XcVKTIBRnj7jVyL5fi9Dxg5Bvxj4gh+u6XVkEkZbCfdH+LrdtJJ/kRLJEBFmVH0xZHFawuRKVMldf1rhidqKfHKI0JE+KYplUEiTx3NHkh03RvvF4SC3qtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Txo+6F7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Txo+6F7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47C4C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713625222;
	bh=HpFHu9oWZ+I9CvgnmaSutbYMDSwYHGG1JNsr2pQlR4E=;
	h=To:Subject:From:Date:From;
	b=Txo+6F7vPcuBAiCUzBcRRIyuZR4tZ6sSOlPVo7eJ2vA5B/eae2K22tnLZ3nkD0hj3
	 4ybspymfbKUOkCLD8iojgTC/poZ1hls5a+eWBqbtmDcW8nsytseEA7CAma0DMKauKA
	 sW+UeAnd8ReBjlbqzAT8BBiR7tOww+Mh+cDlYLGNthEjmtm3PNRaolQEWliuB/6y3n
	 LTFnMfy0qsfNNDWHFPzALSuiE4aOT+laZnmEXXG+x5xgiFZAhR/3yDlkTGD/8JFEiS
	 tVAxW3HhGRL1mt2NwpRVUT8GMUUND9ptbt2GPq0aCKmh9i+S8yNjr0qKADIKBgM/59
	 vDDSEK9ZngY4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD786C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362522281.12706.12503268084552870644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1ec9c8677247c9006d0f164eb6ff771c85512393187c4ea4bb1334e8b55991
Date: Sat, 20 Apr 2024 15:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713625222
