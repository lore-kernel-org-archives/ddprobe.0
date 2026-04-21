Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2672DC32E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776769654; cv=none; b=BqCaUy/4x3bZzGQ0I+tG6fG5EPK5BWpUZpJgtyQ51hIHwUZc6S3dpxgpScQ7u/pzsfEQ4EsBKppj5Z6h/2NsHOWio4fZAzJsHBQ5gnLdvlhPvlzFf222DLaEBYNgBvsnnreEsbSgMGcD4XdPw/3v9Y5utwMHbHrKi+IvwF8oxbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776769654; c=relaxed/simple;
	bh=/CR10+neYzBX9iSqoaXoZYX/d22ljOn2lILP5yHiZAQ=;
	h=To:Subject:From:Message-Id:Date; b=FXbKL57m07L606ZoyKd5sVoiX+aizN8K3Ztkb2+stsV0hsYNSCWQQPUKe9k9hQf/nAwx2LE5+o6eky+nuQnPqFyphFciY52daUeKcFDm3krz/V+KLPrgBl47PBZkwRynfqo98f4v2wxJGv86mz+ABH2Frx936bG8Uz6KvA14Hg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6rD0uPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6rD0uPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA371C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776769653;
	bh=/CR10+neYzBX9iSqoaXoZYX/d22ljOn2lILP5yHiZAQ=;
	h=To:Subject:From:Date:From;
	b=L6rD0uPXxoDRxiANK8El5BdnQntCABpW16AxTnFQOtPE5aHzj5C51SoKyzwSjIqOY
	 yT3wpwT1PkNnV1J5LGWgDlns8jXAhATIJJ3uMOLzEfBO0ZeU/jlM7m0BoCj5lw65kj
	 7qa4Qfw/Ubk/N9BH2Gopeb3GltG8khJMlJWRgI+EBp22agT+vz0kn92fGa9TGqJs6J
	 D++/AZRH1x7bK5o2KTC+lzWfjVQEYQfrMMGqS1BBxQXhzqIroHFxb2317SmK0o2bIx
	 KWCIdoWv1KJql2UfsGuoEetclCW6fNbVsSJOkLLAEFR6qLq1Wy6T+iOtW7YZv2B0KG
	 ZV01Hn4CJzWaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA963F8925C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676965368.19750.15328212767083640556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ea8f55922650989b05196fd15f8d3b50da95a935df757852c6cf1711d72bd2
Date: Tue, 21 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776769653
