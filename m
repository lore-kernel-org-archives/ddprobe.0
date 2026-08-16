Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483822D0614
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786902634; cv=none; b=T5IDgslkwtjc5JDMhY9IOCj2ynuP6cP/4wrDVJDNLl4CTeD//YZC+Vm4647g0XSSVOrFoRme8fhkB4WKvm3trThnUGX5Iwm9QuCUj3wkXzGu8wzKv7hoVZ2dKcByu3euTGcIJIDp+laNehXHn8AHs/W6qUuyRWjiuZHYfxQ247o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786902634; c=relaxed/simple;
	bh=FzkmJHvuwys/VoScg/Q+WYXy4qYLlWp7iRlFniMEvXQ=;
	h=To:Subject:From:Message-Id:Date; b=Ua1nx7ExLepuo5kRwtuj04ockJXS3rORtp5d9N+TsuZQfJC5MtOHLB68VaGMArxIg/xzGE6BqMCYa123gu2wtU7Eg0RtuNf7KCe/Ng+lnxJ8/3lpGDUmXS72rZxOR9JHrOwyzPKIaGGoA6bYcDwElHLE2lEyZxdDwoUP56HNMDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b97MW9rV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b97MW9rV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC0CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786902633;
	bh=FzkmJHvuwys/VoScg/Q+WYXy4qYLlWp7iRlFniMEvXQ=;
	h=To:Subject:From:Date:From;
	b=b97MW9rV56X8fGqAn5qMPMFqRFFPI9XkAyY2aNf/4z2XSwKG6jQbtcmKbL4nB5idW
	 4khdrB7ONDSr3kpVwrk6iI3FfoSWUop7XY+wqOtCB8MUnvS5Oeq0knhqz5euxiFcv5
	 ybzb/egGMo+MQsr6t2/y1vUwRlW1blvSOZ3bt3hIjzWFWUP8ayov8kZHqXt/TcamSB
	 +LvvAnmiIP646q2zh/bhtmyuCm0Okj6gTeOYtCm/yqFEkLv5KNKHfBolPj47z1wfir
	 idrxCmMXpeMD7DWuVrSqm7+U3gKdYsRZQiYW/oTb3I6m5EW8+j7eWK/q9AxwN9w5A4
	 W0Enh+LMHo2XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BFC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690263369.6173.835650753984248344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647363325fed3cad725968289fab30268ba703718a3d076da12716f2f94983e4
Date: Sun, 16 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786902633
