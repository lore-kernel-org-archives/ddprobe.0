Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FB98BEC
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711262897; cv=none; b=Z7z6VMuwUtedVopYVM/T80t4dAY+ZStwvWda/Dq94sfbk+yXUrwnjynfnWolbyY0Opd9fkbLw8H13kdmhK4mFRjvchoGidwdrs4IS3R1ZJyDFuVQFGgU9aDQL5OTxRv42eqK/p+O5X8mLlzeIYilSu88rPA8sL0iNxb3Y9iUc5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711262897; c=relaxed/simple;
	bh=glFr4Tc0jR5ixrlZ2a+V6UlsyVQ47I2wE0PIEkJoYJc=;
	h=To:Subject:From:Message-Id:Date; b=oMPAwuANHP7g3LJzU1xODg5qaJP+daVFzSDDC3A4DX6NrRLaRuAgrJL6e4hpk6E44y0pwPjSFvczWO92YbZBq4Jl0U6MFfmheIg98Kz5KpFKrnIGz2bSbzCXdW0ScPqWIFSDrXxC/6wAq22xNa5wDVNRGIH2sqr5OKqEUqmzbHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5iIZUSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5iIZUSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C428C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711262896;
	bh=glFr4Tc0jR5ixrlZ2a+V6UlsyVQ47I2wE0PIEkJoYJc=;
	h=To:Subject:From:Date:From;
	b=t5iIZUSds9+8YzHnTmH3G/oEG/kdrhNLNco/wf0aEbIY0QB/7rpWM2oTwaPsmuV8p
	 AVxSK/4Eqde4o3fiQQk2HEg6asxz+GJT5kKDd2/DtvjbvZAe+qvRPAJk8byeVCZ7m7
	 /npG4GIyFNBaNB16MhjqSAQnPn9h0DgLauvcERvJiYDfIpgwq2XBlTYDG8vJge9qqU
	 NmCRX8d2FnhMhSLktsFuZtVHUBLws6WAHzVeWT+2YET9WcH9MzBSnKxKQYo14P4mKo
	 N0wdicRM7UMVLZKdEGxDf5mF72cmAtznrwhAOBtbJ64H9cCrZdpZyZc0kNGFT97qEy
	 /a0xVsUWtavVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73640C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171126289644.10983.4992301910682420486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3202a1c81153aea32cede9ea608670ef96b61004985568270d30363220f1f4
Date: Sun, 24 Mar 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711262896
