Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2618A352F87
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776420454; cv=none; b=UsQvSmr/0k5yAaOblE7mIxJJZpHsg6pRx9c6Ub7Ij6E7DayFag/DaQ0HdAedwLgbduCM5KmJg5kfCbcVcXWhJ30fvwHrmifCuycDVabH8GX12vWgY744BZldVszz+u6YqbPOO+PlqgwPEtz607naH2hyJJ56r1vIR7hCD83KFtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776420454; c=relaxed/simple;
	bh=1teg+aXPyNV/9/NidJBXCBAJlr+QA/UkP0UY3XUXSWU=;
	h=To:Subject:From:Message-Id:Date; b=LTozXZOWzGb1xhofRl015kHdUbJ/kh8N0unDORGCjAs+SSwegmffnToul37peHrXz17t23iqKT1EgCgPCNIWUTc1BWZP1gF0m0dHe47WHKA0WYxRFMCZ9lG3PkoQV7XCJCK7rrb250x4RvgiXaOjlO1ACX8vOC85qJjqHE4IqjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wt8cc8Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wt8cc8Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB061C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776420453;
	bh=1teg+aXPyNV/9/NidJBXCBAJlr+QA/UkP0UY3XUXSWU=;
	h=To:Subject:From:Date:From;
	b=Wt8cc8EchVhQtzHdi/DaySW3qHq7e3JVhbEDExV/DtBNeoiYM/TIxKceGCOctocW+
	 ZlLh8zHmWqyIWg2NgphS+kr+8KhQoSAFg9+bgAB+gJ3yzwiVaPo3H7VRMJq7PzTHUY
	 8NfMX2hhRiJ6Nrr0Tq2FtONY9CMQK+NGRoqWFXtg0fh1Eu+UHQjgthp5fT/vxRxENe
	 47LHVoJieN9WFhT4u4uKIx9CaanQEi5vp4R3wUkyiK8ZtIIxhoUvXTBsuAlIrKDRGH
	 YYxkG8Chb8mMsKF9HThXaNe9TsKz0Aa7faWONWrZmZ7vz7pB2KzAqZD9Qdcc79NTvq
	 kAKAphT/eM+/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9658F43688
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642045368.24908.18165756903764660469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3460626b183af271c86bf89c8730f821468eb02da757b36911b9174010ff7c0
Date: Fri, 17 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776420453
