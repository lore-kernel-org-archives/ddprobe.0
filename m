Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DCA2741D2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744703994; cv=none; b=Yh74Uwi7422oaekELBaC0ESE5mUmKdA0B8EtyRJkyY96cLEr8DDio55jhvbVpmc6yNZLvYV5SvzUHaSEKg8vLDYipmn615lnqnFwdsK72EHnrSk4SFG9IdU7q1xVwcvyPmDxjTUTIq/04ojam6vzz+kbJvFMRaHp+cMiM++X0lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744703994; c=relaxed/simple;
	bh=8vC9vOGfB5PE/KV3aaAYKvXu586XSrUFOjNX6oUpn00=;
	h=To:Subject:From:Message-Id:Date; b=PuS1SgM2k8Sc1b/QGr4pCeefgzWW4cB+F0rxKILG7+NMD18XFL0bu9vd2exTiIjoUVs5UErUhldIqLmhSfbPlNO7qWxp2DwFmWgJcfGQV13BFdByp8/myor1+OyNv8b27esmPobjZ2mRuTJ/1ClBovTkBcRSSj8C5lxN2YY3INE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr4yX/mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr4yX/mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87C6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744703993;
	bh=8vC9vOGfB5PE/KV3aaAYKvXu586XSrUFOjNX6oUpn00=;
	h=To:Subject:From:Date:From;
	b=rr4yX/mhigixjy71YlTCO1wSz06rCWXOdJYAmbxoE2344FhpYE5ByRgyPFQRNVWNt
	 0KCs57U0Nc4NNVboTqpy5AmUFLIiL8nvYMs0uE2uBNTfp9TftksCXojy415xaa6Bt6
	 WYH6TFRJKu1G1a/hUTYP5d5D+7iYYp6BnXZDOi3kMcVFrUuBGk9u50EXbH1suDaYWq
	 YVXsJvIvf/2eJ4feXKixA1I+nX3UbVvBWr3lo3lA6XERJT6X1khK37+1hzqU8dMPvs
	 tRW51AiKgZReVBTralJXKGGJQFhodmRyi63YCmDEXOHwTSudBOKtiAxpHYnVE5WY7I
	 BgWx5xTC2NuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9730CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470399360.14931.10751004395910963585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9a09fc534cecbe4f62f8bfcafa9aab8cfa6c892521456178b2f38ff6cce7ed
Date: Tue, 15 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744703993
