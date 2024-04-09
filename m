Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83E56FB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712625497; cv=none; b=NxpMpCt8L7KTEHqJo3ZEaQaaoTXWjSfxsC+K9iEiB0d1MfCUTAj51HpIFOVhAhIP0or56N+swNESeANvRwkG8RY+XypsVNTJCTBpsPf1hY7/2u1x1u8cYLL00tK2YiPCy9PclPdZ4LNw+3lSuvlOFJoStGeKLl+hGGE9l2zQ8UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712625497; c=relaxed/simple;
	bh=UscfbSSBcR0du+IV/09M3z/Gv2i8Xi7YKbasxLlsnqw=;
	h=To:Subject:From:Message-Id:Date; b=My6Wih8x9FNaV0G0tbcRi7EOJYjvERUfRCQJakZHTAy0c5uOCiByLbK39IA/nks/eU5UAnheaz8iCgFINYS9S/rLbnNeU//K66nsfqGv1WKJklnIYgPCtjuw6CByM/BtCwhmpnaDM9BAJQWPQwxMM+YvGk6zr/bb1dOyYv9lm7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upOlr0ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upOlr0ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AFF9C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712625496;
	bh=UscfbSSBcR0du+IV/09M3z/Gv2i8Xi7YKbasxLlsnqw=;
	h=To:Subject:From:Date:From;
	b=upOlr0wwQ4jr+c00ZBAPf2pNKCo4+cJSRNMqBoNgB6A/olQ7nCXiTcXYGvqQMqvzU
	 Rg8+WVEpa0/4Pa+nTmURAHRCSJVcXaXmX+tQBQQabUj90oi/Ku6VW6cq7jtdpE6Fpd
	 2cOZRGvsL5XOpqetnnZ3BbHWKoRCDEa+htGF67TRTEqIBPKmxndP9GPN/IDPHAlt3q
	 CtpU0/R85s0+oUigVlxQAEX79qDmbNgGVlbXk9XrYWx2TAlCHkUvKlCut/4rIL1fqV
	 jfTWfNb40+Viq0r4p/Rw28gNSZF+nFtad9ZrTaBozPFIXoH3UgyfQnuHYmO88hAbnv
	 dkJ9eEhFw26Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74451C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262549643.15924.11355329019359185979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400a749f78ec39daf688f4bc81e61b476cebb05f6094df32de79d46d132dfd61
Date: Tue, 09 Apr 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712625496
