Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D803F389456
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776521853; cv=none; b=S8HYiX95I9yzEWablkyc7So6DNEajUgQ9FGFhSiRa4TT4kGivnG5bK3y1g0V94f8LjnzWzxyqCnoby6lRLrT7N7keLptxChy3OlUkjSxLGrPAOQXT3FDYcKEfis7RR3gbkc3/JEyEys6d/ARvcisHI/BGSMuRlGzcG5ML7NNBnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776521853; c=relaxed/simple;
	bh=spo9FpHwuPgvWo5xmqWgd9SwWDpxE0eA76Ghla7vPRg=;
	h=To:Subject:From:Message-Id:Date; b=obfUmpxm8X488CJYKlyBGYGVQV/nj97COhR5v552rkB3cOD+FAUeF1aVMeqePVzqRM3wtFxiRENhKd+Fw1bCkv6ZgWR71CDJZrY1uq7BpvInWej9CHMEYGD/qW/Q2ElpHsc40Pbzr6Y1DbAsyHETaW5Q7/wf4TcHplbhQ9umIcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ialeUwEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ialeUwEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD498C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776521853;
	bh=spo9FpHwuPgvWo5xmqWgd9SwWDpxE0eA76Ghla7vPRg=;
	h=To:Subject:From:Date:From;
	b=ialeUwExvP3IOeA/8zGxyVRj69HBe2KnDVPwlx9T9ONB1OTuTnwz8sTR06G+7VE5W
	 yAdnRrBFgAj+SyeU4psPyGqaFSHXISzfqvWPv1MYEqEryHEzjBiVKWY9aHvocNNaRg
	 dUUgDMhXUWjBjz8NKDxzVCDZzygbwhr3QOOMKV2Dmqwi7pEb4JlCNSnkzD8+OkCZk3
	 xwotTpF6e5SWlxUycAQWGctFgnyRLZSR2a+6pIdfhYUDF7NYq+yzKOXbXWXfXOxrI4
	 haZp/R2vOtWHkebhDaq393e90o24vplmVHvIjTSS0Y2lO6+vlM9SWxT/1kccz6WHwg
	 /gb6fzWwPObPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A6F99C84
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652185368.20155.4174581626179442811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c28033a463128c90920f92cb15d6ad5ca0be2f22a6e4de6513a039a7b7a8790
Date: Sat, 18 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776521853
