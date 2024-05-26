Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BDA947A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716760463; cv=none; b=qAyUyuM0h2SV9WMOagHICvl0JDHGJIpkCiLqZsI6DlAm5XyiHi1OEgfL67Lsu0ZRwTgQrTGBDvoh0OGzfsiKxqU++G+tPzhzerEDIbNSTqamAjYSfc9V/9Gtn+AWwHCPh9j0oBWl/3g9NRvZghJsTlVb1O9y1t7pSNi40ceHJVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716760463; c=relaxed/simple;
	bh=HJ06K8hYlVfHQBo19YnwZHGyPwQ/HWAJz9R/ivOY12Q=;
	h=To:Subject:From:Message-Id:Date; b=c03c72RSoO4TcvA1mbw4CQVKgPYbrLXIjCzNVI+yJHl9ijJQYI2tCqVBu1X4aB2cFMVJd2wm2pwQxnEOwjekQZPQKg18LOGDTSDFTmAPcZ3zOy56dEInd8L8zCCBZ1mopCzJQ2EWfkmPDzpVpUAd7WCfPKn+LJ22XQs7qUqoxf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXxlS+ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXxlS+ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9E2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716760462;
	bh=HJ06K8hYlVfHQBo19YnwZHGyPwQ/HWAJz9R/ivOY12Q=;
	h=To:Subject:From:Date:From;
	b=GXxlS+ngU2nR9MowRh74fpEZvbatK7qTfnwRI+VFDj+Y8AJUDXLgVIDCil6x1a5WI
	 W8wdfuLFMluF8OcddVBhGAPHgNV6xGmg5kk2+liuRG+wnRt5LKKLpDsCpsAJlK4QIW
	 1MzC7UGFgcMOY6Zay3s3z+aukn1dqw2RL09bnQb0XYqEz54ARD40h0owt6U8WIyAIE
	 qM779OZfQw5HG0bylP+6Q/2EfeL7O41ApN2s+kb+wszdqVPKIFTarYOxxD5/vsBWQx
	 BiJJR3vN4/fUHkaOXiqdOWiI5B1L8Cbq4s+vw4ekY2RgpK03u3MVP+rLXyQN/tsdy4
	 R/9DiEeMS3hIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3669C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676046276.4299.9870991945155418881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf34be7f82f2ba775c1560c1b491465c34f001e46676769868603e6c5469744
Date: Sun, 26 May 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716760462
