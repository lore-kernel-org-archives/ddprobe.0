Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CD413B7AE
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776663454; cv=none; b=ZZC/9JVcA0skSWmM7B9Sb9XFm0y+lG5FjKf5bpiQN0ghpN2PvtpP8cpijZFnmWP2mPEMdR6bfzwMbFMbncyPrbVd1DW/+mQIVYD3rp5w9cx57fIiUeK/HfBQU37xW0RuTyqesp+Wg7jRCiSVH14RujRlt2yJ27PGCfDoYdDHOYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776663454; c=relaxed/simple;
	bh=Bk6ncchqeJwd3kM4hqUa4rMlOQs1K3zd6tm049FQlcs=;
	h=To:Subject:From:Message-Id:Date; b=WshFO9y/fqwJC2RGXzXweMUFLCoIRlmWBPQpNDN9B2HysFDWFnRF4FZvL7BfQOMwVDCYtUciV1aBOF5ld0HjQYfgwTqvY36xXUQdgzN9gNAiNeYE86dOtNhUUTX+LwLI4iGGVSisH+9JMo92JYs/3xqUgfi4J4JeLB3vMBsN9BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+6SFd2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+6SFd2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD61DC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776663453;
	bh=Bk6ncchqeJwd3kM4hqUa4rMlOQs1K3zd6tm049FQlcs=;
	h=To:Subject:From:Date:From;
	b=f+6SFd2kp3oc96/dtnv7N44xz6bHuzmASPalrFh+gYmvsRagJKaRgyNVALfkAScAP
	 tyhAgYMo8fP9mLc6D+qeQKgZZwqnUhWtT7G1en9rr5LICF18flbwOX1mpN1/kXkbcq
	 fPfObo/plTfQL/JXQ1Myq3qvv3rBHUke2wVn3Od1m30hVATd5ZIIWtgBAdREgUPmD1
	 IwjuqpLaTefojGJOCyUqNa5KgCP7mP2wCrSGewC8RFO/uAZ9wOUmZnZ+Zsw1xv9gca
	 AIU5CKcj6I5G88E1tieujMFXwSbORoa1kP649nGcF10yzXUdwResozq1ZZgGXGTo2l
	 P1X+juq1qpIRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF86F99C86
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666345368.17235.384688372598532352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b68ec6c5eefc94ce27bd8136a0cd8a8a6f702244f19802f39ea1fcf843b864
Date: Mon, 20 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776663453
