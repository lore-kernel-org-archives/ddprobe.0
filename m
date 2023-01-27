Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B687B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69C0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674796385;
	bh=Sotwz2ka0/hBkqJC24Ek2bFSax8gTYzQkf8vjk30dsI=;
	h=To:Subject:From:Date:From;
	b=mgBWdVWgQx2/Cjt9jXKYQ2Ytj2p7owt2bs4JXwb+5juqmq6YBpcnElx0IJ9JPErX0
	 H8QylEKCUmOh5GeiSLOBFqbK/m6UC2X/E8qPLS9tcPRdujn/DgjGccdg4dPY2qIXp2
	 GR61L60AqqgV7AEt8BqbC0kIDdeBOr5HPcOZfTXft5mfaBI47suRDp7tjpZAhELzSo
	 dlLTWfZrZyrzoRuItVCLY63aH1CBApp87FdKP47oz6TvEbb26swwDdD6Fi0/GEdP3m
	 RejBshIY6SKR/CHw8WSey3rv9kabUC24AXT8wQK6Yg/M9eFQhIiWYnEVCAbqIcadQw
	 5So5tRPUgN3wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC626C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479638575.22392.13570668276909933429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8668a5233237d6e56541f21c0badf075b8587a122b6efb90363f84bc1ba90574
Date: Fri, 27 Jan 2023 05:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674796385
