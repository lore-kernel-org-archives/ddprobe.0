Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9EC2F9C34
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755278394; cv=none; b=Peug3cZNbpkyVlxm5o0phFPlpRi1zTIUFx59q57BH9AYl94F6AiUHuxyR/DOiAWDDRPjMwccwtjRDQxTfghv9YVLtL+IiEHHZM7oWsSEXe5+Ts4vhf3r5KTKhSpIOIw47scZShhqeD66LlHin8SghuKLOHjKHcXV6XZydOwBhHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755278394; c=relaxed/simple;
	bh=RTfiU/PN7TLbk21SPLHE1JQrMRZ0mbB1tY9uiX3rZaU=;
	h=To:Subject:From:Message-Id:Date; b=nukJGtGRhaBfEBjwt6rm6Mfdsvv4WiXlBJOBEQ5NKj566pNJeE3oUU994qkD+D9uPX0pgP7kbN31DP2xKckLX9PDmFXuTILTCQpM0xncP3uB+nAih/Hf9v2wtW5Pb5jWM6gRtH9r92BOQayrTdlEgsCx/xfblXHLNyYiz5emk/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BctRew81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BctRew81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E2C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755278393;
	bh=RTfiU/PN7TLbk21SPLHE1JQrMRZ0mbB1tY9uiX3rZaU=;
	h=To:Subject:From:Date:From;
	b=BctRew81YwUm2WA5CA7YM8fdO+dt687C28yMiSYwqTud52JGrPbNuGmaJTvVPAD9g
	 0qeHG/jxtav/l6dw+CcRzeTBTAdLEN/sF9CMTXS/prP0fTc9511+wRvJGPRFx1cdcD
	 VOxnMOV+avy+0OtMUyN4upYo5X5d3yYH5VvLKyH2Ueb8DOEh2hGjA5c3r4bft5iOgz
	 M6RxoGkD9yY3cU8WFGlEGP8m27B1m/zM8Lf/iD3bSpiP2At9uFErqNiLNxbo5EDb0Y
	 U5txAOEmviIn+Qp/CSCnUE8RALTEq/tSG1TpsLA9E+rmVfQprnJNYlc5fB6wjxWrSc
	 C6b9qaS3KlYVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B5CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527839357.23213.14122714312488377785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9473c134cc02098e50d72032ba93fbbceb5400119e652067d156126e2ff0942
Date: Fri, 15 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755278393
