Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07402FDC20
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776774454; cv=none; b=YNZH41LK5nutssYd3yybN74iDArUVNoA8sJlqAxlDU4ZWrATz0x7ZA0PIYHqMMJX8C4/GxZ9U3uKyrAUdAQVs8Z1Rgcjq+8cvFObBv8yemyK/62TOtVPdybNA8wQI0lybYToJOs11FrMcobYWYYdrs8i+KFU16bMRp6SBfmdxqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776774454; c=relaxed/simple;
	bh=yMDbZyPFnFnWrB0ry8i30OTvpfPTbXzCPJUW54cL0X4=;
	h=To:Subject:From:Message-Id:Date; b=KBvLeonrNyaCoAdFUvAsMTrWOoQLOkgX+rayxlCEb8zsRa/M9hGmcCBNGfYPeSLfX6HvjiZwpwyI92zLQ/9Kl10NDfoVg8OqxdQnMs2mEfOagD2IGDewaXJim4l/ZzOb0QpOJg5lcfhVwrxiLt9pHMgKhv1hbpjfR5TS/UVSNcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDk7unlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDk7unlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B54C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776774453;
	bh=yMDbZyPFnFnWrB0ry8i30OTvpfPTbXzCPJUW54cL0X4=;
	h=To:Subject:From:Date:From;
	b=LDk7unlRbZOIRxGRB9/J7Tel30ROzzLUOwUX5CzbAZpitLxB7oLRfEKKytEPv6N7W
	 X/zg48JaZjNoU+bHl5KEBkqFWxkmqyocCnygjyXI16iOxecVvIxLOWZcHa2/6IdlKe
	 UfWhXDbTllubR1USAqWrkWHcSZg9zX7Y3Hl0BNaFfatO8Ga7Dyeu2NZG+jZGIWVI1T
	 eJa1bzpB4yE1lsrtT2U7VwKsXHydvCWXE8ulh0nNVCTWq9h1l+HaATAiNvm4sdfK59
	 x5Lyi643IYqDiRE+7HEfO7U1UHjLpk2eNO8miQkw/Bw5jPYClLTTfhqyJWQHafHg58
	 lffE0J6o/9ItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3D7F8FA6D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677445368.716.18153753470176602591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8237998ef0a3b6b89273351f71854179b4710d925bbf760a8d0880a498bca5e
Date: Tue, 21 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776774453
