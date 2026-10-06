Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5893C2E612E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791292834; cv=none; b=QpQaaY565dJRPZwF6wCpFdj5fxTYp/EppVKfVTV+0pT9GhJYTKTyYAL0JbxkSaU9U5mTnUqdEh4yuskJe57GB7c071i1CtiBflrdhgB3HyTzYuYmK32emi2NJM6rsDpem2Z3vRktwJptEliS5Gm96yPbEzOrK3qp7ij1umr6I1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791292834; c=relaxed/simple;
	bh=YHLf4W3bthFj8Yosy41Zbw6n1s7qnuD82feaAKhDsJY=;
	h=To:Subject:From:Message-Id:Date; b=Fvb+xqxkGa04hj481cTFfj7Cp4Xcyu0dsqWnRySvCGqciNITdASg6p6oC3WmkXHR+vmF2U8gB5ChbHPNycABoH/Bp+qXZ+VjDLxpaX5zXdzPPs+hxbR07JWACUV6vdSKuHtedS4L8T0qgTVmw5LCqheKHdsKjoMyu2O8vafDdKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL9QNmsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL9QNmsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13FDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791292833;
	bh=YHLf4W3bthFj8Yosy41Zbw6n1s7qnuD82feaAKhDsJY=;
	h=To:Subject:From:Date:From;
	b=eL9QNmsKQes8QbWgnUlvcNAopSodyhsNZkQuxVBD0Phn263313bqP6GYsxMjCkrXa
	 zUwoCF8xVR8n0lZKaSPfZ9ukTD97u18YEvN2epYD//qRfZHNNNp/68ml32fLuHQuTk
	 y9p3z8n7hEBGIKoSeqP3Yk0wcRfIzIhzBBqIuHQdcuBL+JcvbchIuyTyZn9zBtaWUk
	 C8xwqD+fQwDWxjS5LHh3z/kXB4qls50CqBUBgXuzze+2CIS/b84rx1QOOJef9MGtlH
	 QKa+59Pd6MyTwpUrKRZJTIYMNoq3pf2H+/A/O+6j9spJfb3x5DAWLf9FidAA53Ew1W
	 Nb1fT1IYwy/Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFEACA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129283369.5892.7417536387779414942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24117887eabd216a37d089bebb46c413c35ae62f4de0f617bdca66f01380f465
Date: Tue, 06 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791292833
