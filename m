Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D8E6024A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716283943; cv=none; b=JmaINztWFsfHfPugHg9mNg3Dq9DnVcQcW9zaKEbJ3IYOvzZn8irp7uKrtPTMcOulyoeDoODMN4xt8ooPH9NZhgM9B12NNvz2NkL7T/AII5MmO2WjX+nhQ8ujOOX7ItwwXHnnD25ddbcoXSH9cYtp4ATVR2Ydz4vBqc9D1CAx8O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716283943; c=relaxed/simple;
	bh=lPWhvf5LBaOiAJvuFQ8rZaA85Yun51ui52Pc+IJA+w0=;
	h=To:Subject:From:Message-Id:Date; b=P/KPw+ZB6+efxiJ3TYOCgy4O2MHVOiebLjbiZ8DPiekmUVgzjVGQ5zjo1pqLeiwEBTz7921LZsdOms3j8275Tc2pXNAXF2jgJNSEWBfcJS15wzFhoIP4Nuhkkhhww5kDvJHZX5g6CgSZHnDgc3oaAYrh0Kqn5f9ws9tCM30Dgfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPkZOGuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPkZOGuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF77C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716283942;
	bh=lPWhvf5LBaOiAJvuFQ8rZaA85Yun51ui52Pc+IJA+w0=;
	h=To:Subject:From:Date:From;
	b=UPkZOGuGxAWA5KjguNYLiuQ/sfo4f9qXsZZ8N9vii80btug+mg7WOMa+V60GjxFoR
	 D6iF4MBFBa6tj30BIq0Oy45AgTOIwx9AwJfhxRKOLWMHMYfrkLIF//ZNGzXp2+jHYH
	 BWcgXtiSDsS/yju96m0eFVLddT8H31bKvN0T0IloVwm2NqO4qIdRE8IcgZS/i5tolg
	 KAfGB3GAYmMKobODm1JIc/bpKMtKbNjjaNhwIT3CVcW/L5W0ihHBaBFp+5EOJ+FpMc
	 T6LRA4jJXdgH5RtTLuS5PY2oLScjc815aHGperzYPdoF4zZbTXK/jRjNMQQzeOINvD
	 /RCkmjkVPlifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB30FC25B7A
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628394282.8116.9878553876840327838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d959da6fd92ac669ad19d2f2dac278619cf61caa0f26a8c412d860d7de8ad8c6
Date: Tue, 21 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716283942
