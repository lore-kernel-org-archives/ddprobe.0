Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD2D12837E
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711420697; cv=none; b=fqHz4/xYwOsjRCZv/sAwFhz7lvQgna6op0U0WoifP8T3tvgjfNcJdPh9Zqk47Nxvc3FIoPmYXBSCE6LWj6eRw5Em9PhIC7mK+F2t2dsFp8mnEi6mTEmBrcOqHpE+BmBhtRzdvsDOamWufJSrCmqW3J7AkYjiFl6SSUxSI+4fMjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711420697; c=relaxed/simple;
	bh=uKFKwBBLOOd8Fk3eWMGDO/XLxgyKnBdI9qHr4Uwvoh8=;
	h=To:Subject:From:Message-Id:Date; b=kMjw2xS6Gr59fGlwq+ncYhMZQi/J4+i9Z+2hQPauXkoX9iVHYmPT81wV4o3X3wMoEBTilQ8j+rQlrbrS9EHOT0LUSMjTWynYhLTFT2LXWgF4HqieYdEqM1cWXXv1ZXPk3DYHy1RZO01KXUIfgRE6aln3RnOGlcwLIueH3v7EVqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrHkT2XR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrHkT2XR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6CEC433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711420696;
	bh=uKFKwBBLOOd8Fk3eWMGDO/XLxgyKnBdI9qHr4Uwvoh8=;
	h=To:Subject:From:Date:From;
	b=YrHkT2XRQ9QeDtbhdYidIQRD74c12dMhpObY2yFUrv4C8sppYcWsDRRqhoosVbdcs
	 oWZUvcVdrFQmEqj5PancmscM9iddsM2/ak7NXqLlSL3VVt757md5Jc2N59vMaFQw/v
	 5rAJVWk5GOoY9VIRdOZIlagIUmcPwL6fMmyyQ8PPHGUqkvHLhRm4P2XoRVV/ZsUGWe
	 1sk7XpEEhb8VLHAklkqpBC9wGFMg7x1xivR5q7vXmRVsrrEY8mQyHg55Im8zKuy0F8
	 mgPQlWmoyxzHKQwfyN7stNjR9JbHyN9JfTSW9x6PmFotIHH8sae2iObhXFyfB9d9MT
	 WcjJMVnDpUqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C2A0C54E64
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171142069643.20920.16915990672528669286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d4e568b0646346e7cfc058f8099c1c482b8ff56705af071479889f29025608
Date: Tue, 26 Mar 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711420696
