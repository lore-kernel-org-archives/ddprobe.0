Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C451A9FA0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767922434; cv=none; b=JDrD+pA6I0PmrK2FQJTn9ipj5Jp/04ov8VDmKgYAqYakc1PTjbB+vLPwR1aSDamPS6uNXXp664qVJ6t4CSc6CdHU/ODbOBL9XUrNATqxqmlgnPRjmCVOyaDMjiI78LPbEz057xCCQzxzpgLm/V2eaLvhcK5REqM+BYSM6m1GAf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767922434; c=relaxed/simple;
	bh=aHwpcDY6c2FUeejgELvbZSeV27ComPDorFN2fTwbsLg=;
	h=To:Subject:From:Message-Id:Date; b=Qsm9zmsfrW9vYh09DtjtSellYHBFBHoaqmGiBBl6rkpxWdDlYCT4k3yHyBxzs6HHcGJVX8u8mfcIl9wTtdoERuNJvjgEdCNAAz1hlHFWMFYh2WEHQnwrgirUwN5FdEmFb3J7RMG9yS/IFSkgmDtc+m6ImJPVlAN/e7BUiRZ3m2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqH6g4Pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqH6g4Pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBCBC116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767922433;
	bh=aHwpcDY6c2FUeejgELvbZSeV27ComPDorFN2fTwbsLg=;
	h=To:Subject:From:Date:From;
	b=sqH6g4PbCl2D+yUcZghKlN3r0amsuJu+XPA7Rl0XyTFGXZ4Q90nIPMMMY/ApEn2FU
	 lx7zdg3fgeQW3qt1inE1L2sI1dUC9Oy9KVUSbf1p+aUQ7jEOlyZniR182p1yNOl+5o
	 1eie4x6THKpMlTDKee/dpKLoaS0QEfFtb9zgwfO9D4JYdpyboUN8/9aiPIFV3eFvkC
	 rLIWDYG8AWb6cXC7di5G6VKyw72e4Wfd3nsEu9YsJ8YyFV5ULdxAH6Ig1E5VD7E6II
	 Eclh4CwsSOmQ54atZQnvNmupCDxa+VjuHJYMrOfgH/il6XTfXqZtm41ErQcl56nkAN
	 c0xGEN2g/ZqUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E869D232CA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792243357.20812.15470137464032118433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860fa61fa0891718516fb40fd7352b23b0f739c2db5b187ae65ff9234ea084da
Date: Fri, 09 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767922433
