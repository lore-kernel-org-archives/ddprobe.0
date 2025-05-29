Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379A0B67F
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748540394; cv=none; b=efc5zS35oCsCRnKYfc+Elt0fgHLp9MohTSGslEWbLgBIJzPgten77DdEkKtLFT+V3eLNIOvn7WtH4zIAft3QDCM5NPD1B6Rqs1ZYtafPJh9ZHl5mYzX95DIO6eO/yAD9At5LJy9n9+zEeyWUUFUiZXk02fJDDFuwNVZQSDjJTdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748540394; c=relaxed/simple;
	bh=Nn0ZM2+GjYdxp6mVBOqpjo/HdEHwg5sjM7+Q28gyc1U=;
	h=To:Subject:From:Message-Id:Date; b=dwqiMbwXBUeS8uz9cyW3quMMnR8jKfSPROHsGqDZ2xOcAtES577E3R7hvnTxxZb7RqU1zQZeCZT1ngkNCWgEegwBSP9FKwDqXR/+dJ2yyEUBUzTdooVe+UzddHk6+MugUpi96hMU9Ge0LZ8KkL5NfjLrk2Q/rEET8sdZhyPlArg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnJEY0Dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnJEY0Dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748540393;
	bh=Nn0ZM2+GjYdxp6mVBOqpjo/HdEHwg5sjM7+Q28gyc1U=;
	h=To:Subject:From:Date:From;
	b=CnJEY0DhBH5dooZGejqG2UY3ccqKufy7+ke7zkXGaYhb99o2kZ9A64WENDL3yv824
	 xSwwmNJa+cIRvgE/hiEc6hMo/M7NKbXDCW7gVaLdnlGVsj1OZs1Rn3qEt2iqKPnZnd
	 BrCYEV/qeHU/i8CCGZW6Zup37knTvY70kjPcmkcV4dPBHD2VVlKagbndNzjxFKZDsf
	 wt70lDlcddQ1WfF9N6flBmbIWtX/oPAhA+boUd+/eORAL1otX4bhutSFo6qcT96X4/
	 H/LTeYjdqLHzbLVosJmFqueXVaKq2wU6L+9rqa/GomFBuGn31wqL2gvXM1Yz2axbz1
	 fy+LdfOWJxLUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977A8C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854039360.3995.14166062424463704901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d41130cb8890ff05904f2e9c8e3dc14fc32ef32951df9eb969b14dea6d799e
Date: Thu, 29 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748540393
