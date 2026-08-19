Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CF4367B8C
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787132434; cv=none; b=hhC+yGtj9nFInQ2XeekpOV+jswAG/owXLoiuikLpgxoxxO/r4k5fTHkMSPbn7nb3w9ajsaHFsj+Eo5IOZns81S5ht2EPH5TefFDisn4wMZPrYn/i0RByQP5npyvWw6pcVmDEw6pwVgKW/YHDC4w2KS6WE1r8+kbdkHd180gep3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787132434; c=relaxed/simple;
	bh=CdN3GzhzFAGBTvQj45LI/lwDJVPThLlrXlMcQU0YDNc=;
	h=To:Subject:From:Message-Id:Date; b=JfJkPNvMy7GM9wRzLnX10CKI/fX9o6A3tLxg8BmSPCcBHjBW13ZLyTxZ2h98uJ8wnB4ECH+DgxEg+iEjCvHE2wfDaoFMsVQB5T1uUQ3V57TqxSyQlVvsoIn+rgX4PRU++A4f7vldBEgwdAUrh8P/M5Z7jv+DwjPScBbxCE0Lh3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWHtAcji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWHtAcji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89D3C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787132433;
	bh=CdN3GzhzFAGBTvQj45LI/lwDJVPThLlrXlMcQU0YDNc=;
	h=To:Subject:From:Date:From;
	b=aWHtAcjiSHqtTFgfrpJzjN/veFC15zSKKGSPI32VN1+LMqll9ll01Dg3cZtomVfIG
	 0GvvroN8lKPLz0mqYsYw9UtvCUS4muLN64bl+E2jcbzl19TMG5IwPHfTnNkLshjO0m
	 y9cYiBQz0tz53cjJNF847BSOdzJVNRuSEFwY8YI4TLwdkxK2Oz8wakkLiVD5RdrpTp
	 IxA9Eq/3IZbRB4n+3STQzyp8cMnk8Ym2oxplujegiXGMUWMxxmxxY88YZkbYz2AEfw
	 IzDtNS/V9+XlFYFSJpjxJzgAQ0Vt8CopZ4BB89zaPERgZsjXo84EaWZekn5+QCTlGg
	 bpoA5byrgStcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32C4C5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713243372.25045.10149001395102619425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58259cc114425ba5069d08e2ddedd61a730f4eb99a27f49773148d92bbfd2579
Date: Wed, 19 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787132433
