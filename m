Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE88E2737E0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764692573; cv=none; b=R/Na/8IYxL9arpTh0Chqus9X63W81kfYldw1ytulxiSdgNm5km3xEviq0Rzy+k06Uzs2t6X+zhWfaHlXKYkPu0hU8+7Aw+h/UvtEPGC5Y2Q9v/q8jFgcyCpUknbfwsmkOGxWgQSk6a67GGKTMl9EBZjatEvkWZBIjBggzh4Vot8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764692573; c=relaxed/simple;
	bh=s7EGvTyR48GyvuGEgn+TZd/yjRdTQ//gsc5Plq5863k=;
	h=To:Subject:From:Message-Id:Date; b=QOYh6wp5cDuVzoVq6lvFhe3Zyw6w+CNwRbDTFF6K167FCxS6kmymaY4YjCQgnYsVcV/P8Ga4J5DJPKU5xcDYc1+UUy0FdhvUsAjs0YbbWRuLdmg6D321wzGkk1SsrQSYh9fT9pWnwr86WZ5jW1hRQM/+7CehT5gK+XfsRjVxF1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8QCjE8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8QCjE8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5069C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764692573;
	bh=s7EGvTyR48GyvuGEgn+TZd/yjRdTQ//gsc5Plq5863k=;
	h=To:Subject:From:Date:From;
	b=K8QCjE8/5yoOxFMt+b7mt8ywX+6tWyqGx7NSb1I4JPwLv3D0GKY0ZbCicwdmrPJc0
	 Y8Nk3NqwZVJ7QXSz7X4Y66a2yMfPWm/z2FWGiRzrrcJehWlRLt+UTonwK07UzCN/6L
	 C8QPliYVcsuRGjp5xOt+3xJh88JgiqKmDyANKAlDEnHH3iTdo95nL0sEKBiXXUpc1V
	 VMT/8rFG0qtcFSQQT0s/kBNv3yJnJ+71FQJYMmZoqWesJ7fZTCZT+zpCh5qtm+Bpxp
	 skXdr3E86p0GDyuM9hpJdkoqALWdZYVt86qgqjT4KET8BDeBEP0ICjDcy1Tk83ao0J
	 T8ZXe3dChFoqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92724D11700
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469257358.26063.15873148597648546428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b5829f6e8931e9c4fe6fdccd7a7796671d8ac2ddc5318c67e6b5d1a7fc9484
Date: Tue, 02 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764692573
