Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE4330274B
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761572994; cv=none; b=rx2gjfdL7NFQJgETG62oa/angEmKHK9/m28RRS6UCLgtKHPuU5YCNqTt1aSm05b5DOOl3ckRuodblmrsZqC+O5nq5t9wRvW+C5NW1QvMW5VedyUxas8wed0gPEGjpCE4b94Ji/aVwirwLhpP2mcPz5cL6ZCuOG1olz5cDnU9O3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761572994; c=relaxed/simple;
	bh=aJRxZug1lGZJ62Xo71XGuAKVcHn+C1Y/lrBr0nHyu4M=;
	h=To:Subject:From:Message-Id:Date; b=j28F3pBA/3qW2HhW44Qx0AzbQ2ZrkyfPyrof42c9HcrsJ2/yolihVmnZ8AMJ1+pxfm6/wnbDWM7FoNtkd9e3Ngx+X/+MHLvyoauJtDRfdw2MejyiAp2YdKjtQcMC7FqVaUgLpcVJhR6uxanDINTafDlu3uqpWJKLL4sA/rbS8A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPynnCRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPynnCRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0D1C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761572993;
	bh=aJRxZug1lGZJ62Xo71XGuAKVcHn+C1Y/lrBr0nHyu4M=;
	h=To:Subject:From:Date:From;
	b=CPynnCRgmjWJN39jOcbB3n0zPrPf6LjJXvkjPhEBXE0lLwa9F1PA1AYudw5JVidHu
	 XUX0j4zQC7jEOT7t/2wj0ZwrB66XAvG6Ng+RwXBNgCACLinsY+nsdMBBHVsvdX9q7z
	 vQ5ACtmJuDNaTFHpxJI8QqtA4SRhFjCgFuxjJd770rlKlHBW2XB0XnsmBP+9JF6OxG
	 6ZEel4nYIE8xbxleRgP748o4Hsc5E8Zja43oj5jbXAtADHb3rJ5WTCG1kaRONXtV6d
	 3RrsNxM/ZshZHbF28j5Zhbi3nmmR4+mFmtBDH9LzfOcdWIaJNwAYqVFgWmlHeUweXr
	 vsq5AjfQi6mqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B2CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157299358.32101.6991863308095059448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f858b7b6f7f2108b65e7605802f97b61719ab96bb134269e8e3fa0b877140975
Date: Mon, 27 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761572993
