Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8482F6578
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764155573; cv=none; b=G3fHGPeFvi5FOzQkRH2KugvhYhgsSOpPZrxIAyI5+o6XxEb8C8DQJfZB1Dij3tFk3CHhRxtZ1pv6Xed9pT6m6gQo7tE2D4DIpufEzEQK9jRtpjjiKxblLt1x3JVm7ysCrBT81kgzPTRKdacCFg64Tnvi4FG8nwEPucO3PJrLP48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764155573; c=relaxed/simple;
	bh=eOEIDyn9toBZoKRfV3u8Lc9RXHZMGKOfPpraXZkQj8c=;
	h=To:Subject:From:Message-Id:Date; b=cz/1XnC7z02y1gdTFldwLw6wUTQG7QAIdqOYCTVSM+3p8Ct9YiGCPFbWi1Qu4xURmQpt2uxFFX3YopgPlaoDqf/a8+G39uFBJb1+MqYXGQ35WjuAqaFb/jc2Si8DDHXcOTYgsfFAHELO1YyROWHGOmSlCwKJxnuoBihO3hf6++E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub1PW5fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub1PW5fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CFBC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764155573;
	bh=eOEIDyn9toBZoKRfV3u8Lc9RXHZMGKOfPpraXZkQj8c=;
	h=To:Subject:From:Date:From;
	b=Ub1PW5fVDVtd4Gblknkm/7k+InsO2e5c/9+OsF8ObAeu6rZgqb6uCpxE057CRfjpQ
	 dTy9jV1JBP28e6kfknGZtnmfTlqlkuM49luiiX6cHYp7ie04BZ8FwZ5+xJ+wB9Kwp6
	 X9oaYFlVi+Wc33uPO2bFvzeFoUAmRialMJZ1sUh/reI+v4xd7JXNW7vcenTmexxszW
	 9PhjxDkylDeu71zyB6A0O8dvxVVkug60p1NwIB/Gdc8YTTcMhInF8egAjB2uraaeu0
	 U/+Gr35nrvAWUpP3OaP1WbQZmk5Pv14XodhfQtlZ5yKR/1VUeD/QsQI0YHpokWYiAY
	 ZFn5P1TpTamHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201BD10F22
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415557358.29042.6081905287159196323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b215028415663454d5b4874a4452a16e30333d840594e966979ec98880a6c7f
Date: Wed, 26 Nov 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764155573
