Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E30322CBD9
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748952595; cv=none; b=FISu0BYAlkSGHAnsolnpYwKr4OeDNJXPxCDsv60o5evI8dtfyoIYRuOfpOMQlvPQI6H2fP5p99zSHRTle6klYjaJbUdv9lc/5iKgToXKgnAuBcwXsvDJGwvN8k4IakQ5BfiCpMdlFVyXLmtFSb+RroyHsghzTuiYmEuUn2L+wUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748952595; c=relaxed/simple;
	bh=2NMKo9F5N7m4vOskMr292kB9f5ZjkL/D9M1F6ix9lFE=;
	h=To:Subject:From:Message-Id:Date; b=WfwPnw0tQQ66Eth3TTbB7dm0pKfkhcLtCgcaOYYAN3if7YXUAajgEMA7q+g1DlppDmvVQO0AqxuaO1VMCmhzWRbsmkutmZrTplMUSkz6YuMSNIKv2fa1RJQZt1ubDf/pQiAVRNRBVdhyR0Esph9gFnx4leM3rhBfUdrvB+fg/rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkuQLliR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkuQLliR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F6C4CEF2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748952593;
	bh=2NMKo9F5N7m4vOskMr292kB9f5ZjkL/D9M1F6ix9lFE=;
	h=To:Subject:From:Date:From;
	b=HkuQLliR5jXZb4mRGTdj2RuGPp+OW3AZ+nPvSgdk2trEoReuHywhVOWJl3kEJpU0L
	 AjM9brj5yvSG/4x5G3iHcPMjFlbKni6kj+gtlWXPbIZG2OSZvMT1hT5NSUgEek52jP
	 kE6BDLkNHvD2gf+j21C7+qYE77vPQzUFJvQHskBUoLkD729q5OQ+5tdQnP0zRv6Riz
	 mzSKn1kvYqX3pF07KIQFpDQ8YWuBGa0H0XoDrBbraQiLQJecb/d4tTriXQCwWGSAwV
	 O5PaEWtbDNoAYHBH5OcPFPGjxqvxxHvBAuKDfk5C9KuwuNDdHXDpE+0OzdVG4TNcIG
	 SzrHTN0c+y37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895259357.4625.7504001069525217546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63404677625418b80b2cdd946d96660ee42abd2668f9aaf6be6470cd5721136e
Date: Tue, 03 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748952593
